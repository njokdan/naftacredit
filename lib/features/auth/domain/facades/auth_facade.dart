library auth_facade.dart;

import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:naftacredit/features/core/data/index.dart';
import 'package:naftacredit/features/core/data/response/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/utils/utils.dart';

abstract class AuthFacade {
  Future<Either<Failure, Option<User?>>> get currentUser;

  Future<Option<User?>> get user;

  Stream<Either<Failure, Option<User?>>> get onAuthStateChanged;

  Future<void> sink([Either<Failure, Option<User?>> userOrFailure]);

  Future<Either<Failure, Unit>> login({
    required EmailAddress email,
    required Password password,
    UserDTO? registered,
  });

  Future<Either<Failure, Unit>> createAccount({
    required DisplayName firstName,
    required DisplayName lastName,
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<Failure, Unit>> updateProfile({
    DisplayName? firstName,
    DisplayName? lastName,
    Phone? phone,
    DateTimeField? dob,
    Gender? gender,
    Password? currentPassword,
    Password? newPassword,
  });

  Future<Either<Failure, Unit>> googleAuthentication();

  Future<Either<Failure, Unit>> facebookAuthentication();

  Future<Either<Failure, Unit>> appleAuthentication();

  // Future<Either<Failure, Response>> resendVerificationEmail(EmailAddress email);

  Future<Either<Failure, Response>> verifyEmailAddress(
    EmailAddress? email,
    OTPCode token,
  );

  Future<Either<Failure, Response>> sendPasswordResetEmail(EmailAddress email);

  Future<Either<Failure, Response>> confirmPasswordReset({
    required OTPCode code,
    required EmailAddress email,
    required Password newPassword,
  });

  Future<void> signOut([bool? notify]);

  Future<Either<Failure, bool>> checkInternetConnectivity() async {
    final isConnected = (await getIt<Connectivity>().checkConnectivity()) !=
        ConnectivityResult.none;

    if (!isConnected) return left(const NetworkFailure.notConnected());

    final hasInternet = await getIt<InternetConnectionChecker>().hasConnection;

    if (isConnected && !hasInternet)
      return left(const NetworkFailure.poorInternet());

    return right(isConnected && hasInternet);
  }

  Future<Either<Failure, R>> handleFailure<R>({
    DioError? e,
    Failure? failure,
    StackTrace? trace,
    bool notify = true,
  }) async {
    var _exception = failure;

    switch (e?.type) {
      case DioErrorType.connectTimeout:
        _exception = const NetworkFailure.timeout();
        break;
      case DioErrorType.receiveTimeout:
        _exception = const NetworkFailure.receiveTimeout();
        break;
      case DioErrorType.response:
        if (e?.response?.data == null) return left(FailureResponse.notFound());

        _exception =
            FailureResponse.fromJson(e?.response!.data as Map<String, dynamic>)
                .copyWith(
          code: e?.response?.data['code'] as int? ?? e?.response?.statusCode,
        );
        // Log Exception to Firebase Analytics
        if (e?.response?.data != null)
          await env.flavor.fold(
            prod: () async => // Log Inknown Exceptions to Firebase Analytics
                await getIt<FirebaseCrashlytics>().recordFlutterError(
              FlutterErrorDetails(exception: e!.message, stack: trace),
            ),
          );
        break;
      case DioErrorType.sendTimeout:
        _exception = const NetworkFailure.timeout();
        break;
      case DioErrorType.other:
      default:
        env.flavor.fold(
          prod: () => null,
          dev: () {
            log.wtf(e?.error);
            // log.wtf(e?.requestOptions.receiveTimeout);
            log.wtf(e?.requestOptions.path);
            log.wtf(e?.response?.data);
            log.wtf(e?.response?.statusCode);
            log.wtf(e?.response?.statusMessage);
          },
        );

        _exception = failure ?? FailureResponse.unknown(message: e!.message);

        await env.flavor.fold(
          prod: () async => // Log Inknown Exceptions to Firebase Analytics
              await getIt<FirebaseCrashlytics>().recordFlutterError(
            FlutterErrorDetails(exception: e!.message, stack: trace),
          ),
        );
    }

    // Log the user of if access token has expired
    return await _exception.foldCode(
      is401: () async {
        await signOut(true);
        return left(_exception!);
      },
      orElse: () async {
        // Sink all unrelated auth-failures
        // propagate any necessary data upwards
        if (notify) await sink(left(_exception!));

        return left(_exception!);
      },
    );
  }
}
