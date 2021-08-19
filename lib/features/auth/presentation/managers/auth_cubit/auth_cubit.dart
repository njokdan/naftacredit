import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:password_strength/password_strength.dart';
import 'package:naftacredit/features/auth/domain/index.dart';
import 'package:naftacredit/features/core/data/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthFacade _auth;

  AuthCubit(this._auth) : super(AuthState.initial());

  void toggleLoading([bool? isLoading]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void togglePasswordVisibility() =>
      emit(state.copyWith(isPasswordHidden: !state.isPasswordHidden));

  void firstNameChanged(String value) => emit(state.copyWith(
        user: state.user.copyWith(firstName: DisplayName(value.trim())),
      ));

  void lastNameChanged(String value) => emit(state.copyWith(
        user: state.user.copyWith(lastName: DisplayName(value.trim())),
      ));

  void emailChanged(String value) => emit(state.copyWith(
        user: state.user.copyWith(email: EmailAddress(value.trim())),
      ));

  void passwordChanged(String value) {
    var strength = estimatePasswordStrength(value);

    emit(state.copyWith(
      passwordStrength: strength,
      passwordMatches: state.passwordConfirmation.compare(value),
      user: state.user.copyWith(password: Password(value)),
    ));
  }

  void passwordConfirmationChanged(String value) {
    emit(state.copyWith(
      passwordMatches: state.user.password.compare(value),
      passwordConfirmation: Password(value),
    ));
  }

  void otpCodeChanged(String value) =>
      emit(state.copyWith(emailOTP: OTPCode(value)));

  void createAccount() async {
    toggleLoading();

    Either<Failure, Unit> failureOrUnit;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.signup.isNone() && state.passwordMatches) {
      // Attempt Authentication
      failureOrUnit = await _auth.createAccount(
        firstName: state.user.firstName,
        lastName: state.user.lastName,
        emailAddress: state.user.email,
        password: state.user.password,
      );

      // emit status -> registraion failed or not
      emit(state.copyWith(
        status: optionOf(failureOrUnit.map(
          (r) => SuccessResponse(
            uuid: UniqueId<String>.v4().value,
            message: 'Registration successful!',
          ),
        )),
      ));
    }

    toggleLoading();
  }

  void login() async {
    toggleLoading();

    Either<Failure, Unit> failureOrUnit;

    // Enable form validation
    emit(state.copyWith(validate: true, status: none()));

    if (state.user.login.isNone()) {
      // Attempt Authentication
      failureOrUnit = await _auth.login(
        email: state.user.email,
        password: state.user.password,
      );

      // emit status -> login failed or not
      emit(state.copyWith(
        status: optionOf(failureOrUnit.map(
          (r) => SuccessResponse(
            uuid: UniqueId<String>.v4().value,
            message: 'Login successful!',
          ),
        )),
      ));
    }

    toggleLoading();
  }

  void sendPasswordResetEmail() async {
    toggleLoading();

    Either<Failure, Response> failureOrResponse;

    if (state.user.email.isValid) {
      failureOrResponse = await _auth.sendPasswordResetEmail(state.user.email);

      emit(state.copyWith(status: optionOf(failureOrResponse)));
    }

    toggleLoading();
  }

  void verifyEmail() async {
    toggleLoading();

    Either<Failure, Response> failureOrResponse;

    if (state.user.email.isValid && state.emailOTP.isValid) {
      failureOrResponse = await _auth.verifyEmailAddress(
        state.user.email,
        state.emailOTP,
      );

      emit(state.copyWith(status: optionOf(failureOrResponse)));
    }

    toggleLoading();
  }

  void googleAuthentication() async {
    toggleLoading();

    var failureOrUnit = await _auth.googleAuthentication();

    emit(state.copyWith(
      status: optionOf(failureOrUnit.map(
        (r) => const SuccessResponse(message: 'Success!'),
      )),
    ));

    toggleLoading();
  }

  void facebookAuthentication() async {
    // Pexza Dev
    // Email --- dev_xxyffvn_test@tfbnw.net
    // Password --- wbNkN8pwhsYU8LE
    // Pexza Prod
    // Email --- nafta_bfxhbfg_user@tfbnw.net
    // Password --- wbNkN8pwhsYU8LE
    toggleLoading();

    var failureOrUnit = await _auth.facebookAuthentication();

    emit(state.copyWith(
      status: optionOf(failureOrUnit.map(
        (r) => const SuccessResponse(message: 'Success!'),
      )),
    ));

    toggleLoading();
  }

  void appleAuthentication() async {
    toggleLoading();

    var failureOrUnit = await _auth.appleAuthentication();

    emit(state.copyWith(
      status: optionOf(failureOrUnit.map(
        (r) => const SuccessResponse(message: 'Success!'),
      )),
    ));

    toggleLoading();
  }
}
