import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:path/path.dart' as p;
import 'package:naftacredit/features/auth/data/index.dart';
import 'package:naftacredit/features/auth/data/repositories/verification/account_verification_repository.dart';
import 'package:naftacredit/features/auth/domain/index.dart';
import 'package:naftacredit/features/core/data/repositories/alt_repository.dart';
import 'package:naftacredit/features/core/data/response/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/features/core/domain/validator/validator.dart';
import 'package:naftacredit/utils/utils.dart';

part 'account_verification_state.dart';
part 'account_verification_cubit.freezed.dart';

@injectable
class AccountVerificationCubit extends Cubit<AccountVerificationState>
    with DocumentUploadMixin {
  final AuthFacade _facade;
  final AccountVerificationRepository _repository;
  final AltRepository _altRepository;

  AccountVerificationCubit(
    this._facade,
    this._repository,
    this._altRepository,
  ) : super(AccountVerificationState.initial());

  void toggleLoading([bool? isLoading]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void init({BasicTextField<int?>? bvn}) async {
    var user = (await _facade.user).getOrElse(() => null);

    emit(state.copyWith(user: user, bvn: bvn ?? state.bvn));
  }

  void otpCodeChanged(String value) =>
      emit(state.copyWith(code: OTPCode(value)));

  void bvnChanged(String value) {
    emit(state.copyWith(
      bvn: BasicTextField(
        int.tryParse(value),
        other: (int? pure) => Validator.exactLength(
          pure,
          length: AccountVerificationState.BVN_LENGTH,
          enforce: true,
          msg: 'Please provide a valid BVN!',
        ),
      ),
    ));
  }

  void streetChanged(String? value) =>
      emit(state.copyWith(street: BasicTextField(value)));

  void countryChanged(Country? value) => emit(state.copyWith(
        selectedCountry: value,
        states: state.countries.firstOrNull((i) => i.id == value?.id)!.states,
      ));

  void provinceStateChanged(ProvinceState? value) =>
      emit(state.copyWith(selectedState: value));

  void documentTypeChanged(Map<String, dynamic>? value) =>
      emit(state.copyWith(documentType: value));

  void resendBVNEmailOTP() async {
    toggleLoading();

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    try {
      if (state.bvn.isValid) {
        var _r = await _repository.verifyBvn(
          AccountVerificationDTO(bvn: state.bvn.getOrEmpty.toString()),
        );

        _r.response.map(
          error: (_) => emit(state.copyWith(status: optionOf(left(_)))),
          success: (s) => emit(state.copyWith(
            status: optionOf(right(s.copyWith(pop: true))),
          )),
        );
      }
    } on DynamicResponseObject catch (ex) {
      ex.response.map(
        error: (e) => emit(state.copyWith(status: optionOf(left(e)))),
        success: (s) => emit(state.copyWith(status: optionOf(right(s)))),
      );
    }

    toggleLoading();
  }

  void resendVerificationEmail() async {
    toggleLoading();

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user != null) if (state.user!.email.isValid) {
      try {
        var _r = await _repository.resendVerificationEmail(
          AccountVerificationDTO(email: state.user?.email.getOrNull),
        );

        _r.response.map(
          error: (_) => emit(state.copyWith(status: optionOf(left(_)))),
          success: (_) => emit(state.copyWith(status: optionOf(right(_)))),
        );
      } on DynamicResponseObject catch (ex) {
        ex.response.map(
          error: (e) => emit(state.copyWith(status: optionOf(left(e)))),
          success: (s) => emit(state.copyWith(status: optionOf(right(s)))),
        );
      }
    }

    toggleLoading();
  }

  void verifyEmail() async {
    toggleLoading();

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user != null) if (state.code.isValid &&
        state.user!.email.isValid) {
      var _failureOrResponse = await _facade.verifyEmailAddress(
        state.user!.email,
        state.code,
      );

      emit(state.copyWith(status: optionOf(_failureOrResponse)));

      await _failureOrResponse.fold(
        (_) => null,
        (_) async {
          // re-authenticate user
          await _facade.login(
            email: state.user!.email,
            password: state.user!.password,
          );
        },
      );
    }

    toggleLoading();
  }

  void verifyBVN() async {
    toggleLoading();

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.code.isValid) {
      try {
        var _r = await _repository.confirmBVNVerification(
          AccountVerificationDTO(
            bvn: state.bvn.getOrEmpty.toString(),
            token: state.code.getOrEmpty,
          ),
        );

        _r.response.map(
          error: (_) => emit(state.copyWith(status: optionOf(left(_)))),
          success: (s) => emit(state.copyWith(
            status: optionOf(right(s.copyWith(pop: true))),
          )),
        );

        await _r.response.map(
          error: (_) => null,
          // re-authenticate user
          success: (_) async {
            // signout (same as clear local user cache)
            await _facade.signOut(false);

            return await _facade.login(
              email: state.user!.email,
              password: state.user!.password,
            );
          },
        );
      } on DynamicResponseObject catch (ex) {
        ex.response.map(
          error: (e) => emit(state.copyWith(status: optionOf(left(e)))),
          success: (s) => emit(state.copyWith(status: optionOf(right(s)))),
        );
      }
    }

    toggleLoading();
  }

  void countries() async {
    toggleLoading();

    try {
      var result = await _altRepository.countries();

      emit(state.copyWith(countries: result.domain));
    } on DynamicResponseObject catch (ex) {
      ex.response.map(
        error: (e) => emit(state.copyWith(status: optionOf(left(e)))),
        success: (s) => emit(state.copyWith(status: optionOf(right(s)))),
      );
    }

    toggleLoading();
  }

  void updatePersonalInfo() async {
    toggleLoading();

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.street.isValid) {
      try {
        var _result = await _repository.updatePersonalInformation(
          AccountVerificationDTO(
            street: state.street.getOrEmpty,
            stateId: state.selectedState?.id?.value,
            countryId: state.selectedCountry?.id?.value,
          ),
        );

        emit(state.copyWith(
          status: optionOf(right(_result.copyWith(pop: true))),
        ));
      } on DynamicResponseObject catch (ex) {
        ex.response.map(
          error: (e) => emit(state.copyWith(status: optionOf(left(e)))),
          success: (s) => emit(state.copyWith(status: optionOf(right(s)))),
        );
      }
    }

    toggleLoading();
  }

  void uploadDocumentID() async {
    toggleLoading();

    // Enable form validation
    emit(state.copyWith(status: none()));

    if (state.document == null)
      emit(state.copyWith(
        status: optionOf(left(const FailureResponse(
          message: 'Please select a valid document!',
        ))),
      ));

    if (state.document != null) {
      try {
        var _result = await _repository.uploadDocumentID(
          state.documentType!.entries.firstOrNone!.key,
          state.document!,
        );

        emit(state.copyWith(
          status: optionOf(right(_result.copyWith(pop: true))),
        ));
      } on DynamicResponseObject catch (ex) {
        ex.response.map(
          error: (e) => emit(state.copyWith(status: optionOf(left(e)))),
          success: (s) => emit(state.copyWith(status: optionOf(right(s)))),
        );
      }
    }

    toggleLoading();
  }
}

mixin DocumentUploadMixin on Cubit<AccountVerificationState> {
  final ImagePicker _picker = ImagePicker();

  void pickFromCamera() async {
    File? file;
    String? fileName;

    var _result = await _picker.pickImage(source: ImageSource.camera);

    if (_result == null) {
      file = await _attemptFileRetrieval(_picker);
      if (file != null) fileName = p.basenameWithoutExtension(file.path);
    } else {
      file = File(_result.path);
      fileName = p.basenameWithoutExtension(file.path);
    }

    if (file != null)
      emit(state.copyWith(
        document: file,
        mimeType: _resolveMimeType(file),
        isImageDocument: true,
        documentName: BasicTextField(fileName),
      ));
  }

  Future<File?> _attemptFileRetrieval(ImagePicker? picker) async {
    if (picker == null) return null;
    final _response = await _picker.retrieveLostData();
    if (!_response.isEmpty && _response.file != null)
      return File(_response.file!.path);
    return null;
  }

  void pickFromExplorer() async {
    File? file;
    String? fileName;

    var _result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
      allowCompression: false,
    );

    if (_result != null && _result.files.isNotEmpty) {
      file = File(_result.files.first.path!);
      fileName = p.basenameWithoutExtension(file.path);
    }

    var mime = _resolveMimeType(file);

    if (file != null)
      emit(state.copyWith(
        document: file,
        mimeType: mime,
        isImageDocument: mime == DocumentMimeType.img,
        documentName: BasicTextField(fileName),
      ));
  }

  DocumentMimeType? _resolveMimeType(File? file) {
    if (file == null) return null;

    var _ext = p.extension(file.path);

    switch (_ext) {
      case '.jpg':
      case '.jpeg':
      case '.png':
        return DocumentMimeType.img;
      case '.doc':
      case '.docx':
        return DocumentMimeType.doc;
      case '.pdf':
        return DocumentMimeType.pdf;
      default:
        return null;
    }
  }
}
