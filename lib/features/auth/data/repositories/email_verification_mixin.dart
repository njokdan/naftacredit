import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:naftacredit/features/auth/data/index.dart';
import 'package:naftacredit/features/auth/domain/index.dart';
import 'package:naftacredit/features/core/data/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';

mixin EmailVerificationMixin on AuthFacade {
  AuthRemoteDatasource get remote;
  AuthLocalDatasource get local;
  FirebaseAnalytics get analytics;

  @override
  Future<Either<Failure, Response>> verifyEmailAddress(
    EmailAddress? email,
    OTPCode token,
  ) async {
    try {
      final _dto = (await local.getUser()).getOrElse(() => null);
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        (f) => throw f,
        (_) => remote.verifyUserEmailAddress(
          email: email?.getOrEmpty ?? _dto?.email,
          token: token.getOrEmpty,
        ),
      );

      return right(SuccessResponse.fromJson(
        _response.data as Map<String, dynamic>,
      ).copyWith(uuid: UniqueId<String>.v4().value, pop: true));
    } on Failure catch (ex) {
      return handleFailure(failure: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    }
  }
}
