library auth_remote_source.dart;

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:naftacredit/features/auth/data/index.dart';
import 'package:naftacredit/features/core/data/index.dart';
import 'package:naftacredit/features/core/domain/response/index.dart'
    hide Response;
import 'package:naftacredit/utils/utils.dart';

@singleton
class AuthRemoteDatasource {
  final Dio _dio;

  AuthRemoteDatasource(this._dio);

  Future<Response<dynamic>> createUserAccount(UserDTO dto) async {
    // Generate Form Data for request
    final data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return await _dio.post(EndPoints.REGISTER, data: data);
  }

  Future<Response<dynamic>> login({
    required String? email,
    required String? password,
  }) async {
    // Convert data to DTO
    final dto = UserDTO(email: email, password: password);
    // Generate Form Data for request
    final data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.LOGIN, data: data);
  }

  Future<dynamic> signOut() async => await _dio.post(EndPoints.LOGOUT);

  Future<Response<dynamic>> resendVerificationEmail(String? email) {
    // Generate Form Data for request
    final data = FormData.fromMap(UserDTO(email: email).toJson());
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.RESEND_VERIFY_EMAIL, data: data);
  }

  Future<Response<dynamic>> verifyUserEmailAddress({
    required String? email,
    required String? token,
  }) async {
    // Convert data to DTO
    final dto = UserDTO(email: email, token: token);
    // Generate Form Data for request
    final data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.CONFIRM_VERIFY_EMAIL, data: data);
  }

  Future<Response<dynamic>> sendPasswordResetEmail(String? email) async {
    // Generate Form Data for request
    final data = FormData.fromMap(UserDTO(email: email).toJson());
    // Perform request to send password reset email
    return _dio.post(EndPoints.SEND_PASSWORD_RESET_EMAIL, data: data);
  }

  Future<Response<dynamic>> confirmPasswordReset({
    required String? code,
    required String? email,
    required String? newPassword,
  }) async {
    // Convert data to DTO
    final dto = UserDTO(email: email, token: code, password: newPassword);
    // Generate Form Data for request
    final data = FormData.fromMap(dto.toJson());
    // Perform request to reset user's password
    return _dio.post(EndPoints.UPDATE_PASSWORD, data: data);
  }

  Future<Response<dynamic>> updateProfile(UserDTO dto) {
    // Generate Form Data for request
    final data = FormData.fromMap(dto.toJson());
    // Perform PUT request to update user's profile
    return _dio.put(EndPoints.UPDATE_USER_PROFILE, data: data);
  }

  Future<Response<dynamic>> updateProfilePhoto(File file) async {
    // Create a new [MultipartFile].
    final part = await MultipartFile.fromFile('${file.path}');
    // Generate Form Data for request
    final data = FormData.fromMap({'image': part});
    // Perform request to update user's photo
    return _dio.post(
      EndPoints.UPDATE_USER_PHOTO,
      data: data,
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );
  }

  Future<Response<dynamic>> signInWithGoogle(String? token) async {
    // Generate Form Data for request
    final data = FormData.fromMap({'token': token});
    return _dio.post(EndPoints.GOOGLE_SIGNIN, data: data);
  }

  Future<Response<dynamic>> signInWithFacebook(String? token) async {
    // Generate Form Data for request
    final data = FormData.fromMap({'token': token});
    return _dio.post(EndPoints.FACEBOOK_SIGNIN, data: data);
  }

  Future<Response<dynamic>> signInWithApple(String? token) async {
    // Generate Form Data for request
    final data = FormData.fromMap({'token': token});
    return _dio.post(EndPoints.APPLE_SIGNIN, data: data);
  }

  Future<Either<Failure, UserDTO?>> getUser([
    VoidCallback? callback,
  ]) async {
    try {
      final _response = await _dio.get(EndPoints.GET_USER);

      return right(
        RegisteredUserDTO.fromJson(_response.data as Map<String, dynamic>).dto,
      );
    } on DioError catch (e) {
      // If callback is not-null, call the method
      await callback?.call();

      switch (e.type) {
        case DioErrorType.connectTimeout:
          return left(const NetworkFailure.timeout());
        case DioErrorType.receiveTimeout:
          return left(const NetworkFailure.receiveTimeout());
        case DioErrorType.response:
          if (e.response?.data == null) return left(FailureResponse.notFound());

          return left(
            FailureResponse.fromJson(
              e.response!.data as Map<String, dynamic>,
            ).copyWith(
              code: e.response?.data['code'] as int? ?? e.response?.statusCode,
            ),
          );
        case DioErrorType.sendTimeout:
          return left(const NetworkFailure.timeout());
        case DioErrorType.other:
        default:
          env.flavor.fold(
            prod: () => null,
            dev: () {
              log.wtf(e.error);
              log.wtf(e.requestOptions.receiveTimeout);
              log.wtf(e.requestOptions.path);
              log.wtf(e.response?.data);
              log.wtf(e.response?.statusCode);
              log.wtf(e.response?.statusMessage);
            },
          );
          return left(FailureResponse.unknown(message: '${e.error}'));
      }
    }
  }
}
