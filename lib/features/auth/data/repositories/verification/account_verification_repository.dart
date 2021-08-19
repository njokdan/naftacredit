library account_verification_repository.dart;

import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:naftacredit/features/auth/data/index.dart';
import 'package:naftacredit/features/core/data/index.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:retrofit/retrofit.dart';

part 'account_verification_repository.gen.dart';

// _AccountVerificationRepository(AppHttpClient client, {this.baseUrl})
//     : _dio = client.copyWith(DynamicResponseObject.fromDioResponse);

// final AppHttpClient _dio;

@singleton
@RestApi()
abstract class AccountVerificationRepository {
  @factoryMethod
  factory AccountVerificationRepository(AppHttpClient client) =
      _AccountVerificationRepository;

  @POST(EndPoints.VERIFY_BVN)
  Future<DynamicResponseObject> verifyBvn(@Body() AccountVerificationDTO dto);

  @POST(EndPoints.CONFIRM_BVN_VERIFICATION)
  Future<DynamicResponseObject> confirmBVNVerification(
    @Body() AccountVerificationDTO dto,
  );

  @POST(EndPoints.RESEND_VERIFY_EMAIL)
  Future<DynamicResponseObject> resendVerificationEmail(
    @Body() AccountVerificationDTO dto,
  );

  @POST(EndPoints.SETUP_PERSONAL_PROFILE)
  Future<SuccessResponse> updatePersonalInformation(
    @Body() AccountVerificationDTO dto,
  );

  @POST(EndPoints.UPLOAD_VERIFICATION_DOCUMENTS)
  @MultiPart()
  @Headers(<String, dynamic>{'content-type': 'multipart/form-data'})
  Future<SuccessResponse> uploadDocumentID(
    @Part(name: 'type') String type,
    @Part(name: 'document') File document,
  );
}
