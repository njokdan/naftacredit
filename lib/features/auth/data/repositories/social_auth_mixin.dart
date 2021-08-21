import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:naftacredit/features/auth/data/index.dart';
import 'package:naftacredit/features/auth/domain/index.dart';
import 'package:naftacredit/features/core/data/index.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/utils/utils.dart';

mixin SocialAuthMixin on AuthFacade {
  static const int FACEBOOK_IMAGE_SIZE = 600;

  AuthRemoteDatasource get remote;
  AuthLocalDatasource get local;
  FirebaseAnalytics get analytics;
  FacebookLogin get facebookLogin;

  @override
  Future<Either<Failure, Unit>> facebookAuthentication() async {
    try {
      // First we'll check for stable Internet connection
      final _result = await checkInternetConnectivity();

      return _result.fold(
        (f) async => throw f,
        (r) async {
          return left(FailureResponse.unknown(
            message: 'Sign-in with Facebook coming soon!',
          ));
          // Clear cached / authenticated user but do not notify UI
          if (await facebookLogin.isLoggedIn) await signOut(false);

          final login = await facebookLogin.logIn(permissions: [
            FacebookPermission.email,
            FacebookPermission.publicProfile,
            FacebookPermission.userGender,
            FacebookPermission.userBirthday,
          ]);

          return login.fold(
            cancel: () => left(FailureResponse.aborted()),
            success: (token) async {
              try {
                // Fetch AuthCredentials
                final response = await remote.signInWithFacebook(
                  env.flavor.fold(
                    dev: () =>
                        'EAAGkAOqJ3YcBAOGezFzI4tW1lgKNPsYdLZAbpbuLZBKrArHGZAsrdKBAVfYd3zM4iitb1uOfrdtT4QzGaMbHU7HON01sjBpyT4nVZBY04MUIi87cMsu2DR1bZAusY7XzTdhJMNA8Wzm1ZAZBBcBa1TJgRfA9f0inJv5tex4QKewffEZA9PFJ4v5J',
                    prod: () => token,
                  ),
                );

                await analytics.logLogin(loginMethod: 'facebook');

                // cache access token
                // cache access token
                await local.cacheUserAccessToken(response.data);

                // sink new user
                await sink();

                return right(unit);
              } on DioError catch (e) {
                // log.e(e.response.data['message']);
                return handleFailure(e: e);
              }
            },
            failed: (status) async {
              // Log error to crashlytics (if available)
              await env.flavor.fold(
                prod: () async =>
                    await getIt<FirebaseCrashlytics>().recordFlutterError(
                  FlutterErrorDetails(exception: login.error!),
                ),
                dev: () {
                  print('Facebook error TITLE ===> '
                      '${login.error?.localizedTitle}');
                  print('Facebook error (for developer) ===> '
                      '${login.error?.developerMessage}');
                },
              );

              return left(FailureResponse.unknown(
                code: status.index,
                message:
                    "${login.error?.localizedDescription ?? 'Provider error. Please contact support.'}",
              ));
            },
          );
        },
      );
    } on Failure catch (e) {
      return left(e);
    } on PlatformException catch (e) {
      log.e(e);
      return left(FailureResponse.unknown(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> googleAuthentication() async {
    try {
      // First we'll check for stable Internet connection
      final _conn = await checkInternetConnectivity();

      return await _conn.fold(
        (f) => throw f,
        (_) async {
          return left(FailureResponse.unknown(
            message: 'Sign-in with Google coming soon!',
          ));
          // // Clear cached / authenticated user but do not notify UI
          // if (await googleSignIn.isSignedIn()) await signOut(false);

          // // Attempt authenticating user with google credentials
          // var account = await googleSignIn.signIn();
          // // If null, => user cancelled authentication
          // if (account == null) throw FailureResponse.aborted();

          // // get authentication details [idToken], [accessToken]
          // final authentication = await account.authentication;

          // try {
          //   log.w('ACCESS TOKEN =====> ${authentication.accessToken}');

          //   // Fetch AuthCredentials
          //   final response =
          //       await remote.signInWithGoogle(authentication.accessToken);

          //   await analytics.logLogin(loginMethod: 'google');

          //   // cache access token
          //   await local.cacheUserAccessToken(response.data);

          //   // sink new user
          //   await sink();

          //   return right(unit);
          // } on DioError catch (e) {
          //   // log.e(e.response.data['message']);
          //   return handleFailure(e: e);
          // }
        },
      );
    } on Failure catch (e) {
      return left(e);
    } on PlatformException catch (e) {
      log.e(e);
      return left(FailureResponse.unknown(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> appleAuthentication() async {
    try {
      // First we'll check for stable Internet connection
      final _conn = await checkInternetConnectivity();

      return await _conn.fold(
        (f) => throw f,
        (_) async {
          return left(FailureResponse.unknown(
            message: 'Sign-in with Apple coming soon!',
          ));
        },
      );
    } on Failure catch (e) {
      return left(e);
    } on PlatformException catch (e) {
      log.e(e);
      return left(FailureResponse.unknown(message: e.message));
    }
  }
}

extension XFacebookLoginStatus on FacebookLoginResult {
  U fold<U>({
    U Function(String?)? success,
    U Function(FacebookLoginStatus)? failed,
    required U Function() cancel,
  }) {
    switch (status) {
      case FacebookLoginStatus.success:
        return success?.call(accessToken?.token) ?? cancel.call();
      case FacebookLoginStatus.error:
        return failed?.call(status) ?? cancel.call();
      case FacebookLoginStatus.cancel:
      default:
        return cancel.call();
    }
  }
}
