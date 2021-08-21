library auth_facade_impl.dart;

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:injectable/injectable.dart';
import 'package:naftacredit/features/auth/data/models/registered_user/registered_user_dto.dart';
import 'package:naftacredit/features/auth/data/repositories/email_verification_mixin.dart';
import 'package:naftacredit/features/auth/data/repositories/password_reset_mixin.dart';
import 'package:naftacredit/features/auth/data/repositories/social_auth_mixin.dart';
import 'package:naftacredit/features/auth/data/sources/local/auth_local_source.dart';
import 'package:naftacredit/features/auth/data/sources/remote/auth_remote_source.dart';
import 'package:naftacredit/features/auth/domain/index.dart';
import 'package:naftacredit/features/core/data/models/user/user_dto.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/utils/utils.dart';

@LazySingleton(as: AuthFacade)
class AuthFacadeImpl extends AuthFacade
    with EmailVerificationMixin, PasswordResetMixin, SocialAuthMixin {
  @override
  final FirebaseAnalytics analytics;

  @override
  final FacebookLogin facebookLogin;

  @override
  final AuthLocalDatasource local;

  @override
  final AuthRemoteDatasource remote;

  final StreamController<Either<Failure, Option<User?>>> __controller;

  AuthFacadeImpl(
    this.remote,
    this.local,
    this.analytics,
    this.facebookLogin,
  ) : __controller = StreamController.broadcast();

  @override
  Future<Option<User?>> get user async =>
      (await retrieveAndCacheUpdatedUser(forceGetLocalCache: true))
          .getOrElse(() => none());

  @override
  Future<Either<Failure, Option<User?>>> get currentUser async =>
      retrieveAndCacheUpdatedUser(forceGetLocalCache: false);

  @override
  Future<Either<Failure, Unit>> createAccount({
    required DisplayName firstName,
    required DisplayName lastName,
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        // Re-Throw Exception
        (f) async => throw f,
        // Attempt Registration
        (_) async => remote.createUserAccount(
          UserDTO.fromDomain(User.blank(
            firstName: firstName,
            lastName: lastName,
            email: emailAddress,
            password: password,
          )),
        ),
      );

      // Get Data Access Object
      final _registered = RegisteredUserDTO.fromJson(
        _response.data as Map<String, dynamic>,
      );

      // Automatically Login new User
      await login(
        email: emailAddress,
        password: password,
        registered: _registered.data?.copyWith(
          password: password.getOrNull,
        ),
      );

      return right(unit);
    } on Failure catch (ex) {
      return handleFailure(failure: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    }
  }

  @override
  Future<Either<Failure, Unit>> login({
    required EmailAddress email,
    required Password password,
    UserDTO? registered,
  }) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      final _response = await _conn.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Attempt Authentication
        (r) async => remote.login(
          email: email.getOrNull,
          password: password.getOrNull,
        ),
      );

      //// Cache Access token
      await local.cacheUserAccessToken(_response.data);

      // If login was successful, fetch updated user creds
      // Else we'll pass in the initial registration response for caching
      var temp =
          UserDTO.fromDomain(User.blank(email: email, password: password));
      await retrieveAndCacheUpdatedUser(
        shouldThrow: true,
        dto: registered ?? temp,
      );

      // Log Firebase Analytics Login event
      await analytics.logLogin(loginMethod: 'email');

      // Sink new signin event
      await sink();

      return right(unit);
    } on Failure catch (ex) {
      return handleFailure(failure: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    }
  }

  @override
  Stream<Either<Failure, Option<User?>>> get onAuthStateChanged =>
      __controller.stream;

  @override
  Future<void> signOut([bool? notify]) async {
    try {
      // Sign user-out of all services
      await Future.wait([
        remote.signOut(),
        // Delete local
        local.signOut(),
        // googleSignIn.signOut(),
        // facebookLogin.logOut(),
      ]);

      // Notify of signout
      if (notify != null && notify) await sink();
    } catch (_) {
      // Delete local cache
      await Future.wait([
        local.signOut(),
        // googleSignIn.signOut(),
        // facebookLogin.logOut(),
      ]);

      if (notify != null && notify) await sink();
    }
  }

  @override
  Future<void> sink([Either<Failure, Option<User?>>? userOrFailure]) async =>
      __controller.sink.add(userOrFailure ?? await currentUser);

  @override
  Future<Either<Failure, Unit>> updateProfile({
    DisplayName? firstName,
    DisplayName? lastName,
    Phone? phone,
    DateTimeField? dob,
    Gender? gender,
    Password? currentPassword,
    Password? newPassword,
  }) async {
    try {
      // Check if device has good connection
      final _conn = await checkInternetConnectivity();

      await _conn.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Update user profile
        (_) => remote.updateProfile(UserDTO.fromDomain(User.blank(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          gender: gender,
          dateOfBirth: dob,
          // password: currentPassword,
        ))),
      );

      // Update was successful, fetch & cache fresh user data
      // await getAndCacheUserInfo();

      return right(unit);
    } on Failure catch (ex) {
      return handleFailure(failure: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(e: ex, trace: trace);
    }
  }

  Future<Either<Failure, Option<User?>>> retrieveAndCacheUpdatedUser({
    UserDTO? dto,
    bool shouldThrow = false,
    bool forceGetLocalCache = false,
  }) async {
    Future<Either<Failure, Option<User?>>> _local(Failure failure) async {
      if (forceGetLocalCache)
        return right((await local.getUser())
            .fold(() => none(), (dto) => some(dto?.domain)));

      return failure.foldCode(
        // if reason for failure was 401,
        // logout the user (probably an expired accessToken)
        is401: () => left(failure),
        // If reason for failure was 1101, return the failure
        is1101: () => left(failure),
        is1102: () => left(failure),
        is1103: () => left(failure),
        // Else proceed with local fetch
        orElse: () async => right((await local.getUser()).fold(
          () => none(),
          (dto) => some(dto?.domain),
        )),
      );
    }

    // Cache incoming user data
    await local.cacheAuthenticatedUser(dto);

    // Check if device has good connection
    final _conn = await checkInternetConnectivity();
    // Fetch Updated user info from remote source
    return _conn.fold(
      (f) async => shouldThrow ? throw f : _local(f),
      (_) async => (await remote.getUser()).fold(
        // If could not retrieve data form server, fetch local
        (f) async => _local(f),
        (dto) async {
          // Cache updated user data
          await local.cacheAuthenticatedUser(dto);
          return right(some(dto?.domain));
        },
      ),
    );
  }
}
