import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:naftacredit/features/auth/data/index.dart';
import 'package:naftacredit/features/auth/domain/index.dart';
import 'package:naftacredit/features/core/data/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';

mixin PasswordResetMixin on AuthFacade {
  AuthRemoteDatasource get remote;
  AuthLocalDatasource get local;
  FirebaseAnalytics get analytics;

  @override
  Future<Either<Failure, Response>> sendPasswordResetEmail(
    EmailAddress email,
  ) async {
    try {
      // Check if device has good connection
      final _result = await checkInternetConnectivity();

      final _response = await _result.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Update user profile
        (_) => email.value.fold(
          (f) => throw FailureResponse.unknown(
            message: f.message,
            errors: ServerFieldErrors(email: [f.message]),
          ),
          (_email) => remote.sendPasswordResetEmail(_email),
        ),
      );

      return right(SuccessResponse.fromJson(
        _response.data as Map<String, dynamic>,
      ).copyWith(uuid: UniqueId<String>.v4().value));
    } on Failure catch (ex) {
      return handleFailure(failure: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    }
  }

  @override
  Future<Either<Failure, Response>> confirmPasswordReset({
    required OTPCode code,
    required EmailAddress email,
    required Password newPassword,
  }) async {
    try {
      // Check if device has good connection
      final _result = await checkInternetConnectivity();

      // Reset user's password
      final _response = await _result.fold(
        (f) => throw f,
        (_) => remote.confirmPasswordReset(
          code: code.getOrEmpty,
          email: email.getOrEmpty,
          newPassword: newPassword.getOrEmpty,
        ),
      );

      return right(SuccessResponse.fromJson(
        _response.data as Map<String, dynamic>,
      ).copyWith(uuid: UniqueId<String>.v4().value));
    } on Failure catch (ex) {
      return handleFailure(failure: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    }
  }
}
