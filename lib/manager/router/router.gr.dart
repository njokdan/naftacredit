// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:naftacredit/_404.dart' as _i9;
import 'package:naftacredit/features/auth/presentation/screens/email_verification/email_verification_screen.dart'
    as _i6;
import 'package:naftacredit/features/auth/presentation/screens/id_verification/export.dart'
    as _i7;
import 'package:naftacredit/features/auth/presentation/screens/index.dart'
    as _i5;
import 'package:naftacredit/features/home/presentation/screens/index.dart'
    as _i8;
import 'package:naftacredit/features/onborading/presentation/screens/onboarding_screen.dart'
    as _i4;
import 'package:naftacredit/features/onborading/presentation/screens/splash_screen.dart'
    as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashScreen();
        }),
    OnboardingRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.OnboardingScreen();
        }),
    AuthOptionRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.AuthOptionScreen();
        }),
    LoginRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.LoginScreen();
        },
        title: 'Login'),
    SignupRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.SignupScreen();
        },
        title: 'Sign Up'),
    EmailVerificationRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.EmailVerificationScreen();
        },
        title: 'Email Verification'),
    VerifyPromptRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.VerifyPromptScreen();
        },
        fullscreenDialog: true),
    VerifyPersonalInformationRoute.name: (routeData) =>
        _i1.AdaptivePage<dynamic>(
            routeData: routeData,
            builder: (_) {
              return _i7.VerifyPersonalInformationScreen();
            },
            title: 'Personal Information'),
    UploadIdentificationRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.UploadIdentificationScreen();
        },
        title: 'Upload Identification'),
    BankBvnVerificationRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.BankBvnVerificationScreen();
        },
        title: 'BVN Verification'),
    BankOtpVerificationRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.BankOtpVerificationScreen();
        },
        title: 'BVN Verification'),
    VerificationSucessRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.VerificationSucessScreen();
        },
        fullscreenDialog: true),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.HomeScreen();
        },
        title: 'Dashboard'),
    UnknownRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.UnknownScreen();
        },
        title: 'Error 404')
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/', fullMatch: true),
        _i1.RouteConfig(OnboardingRoute.name,
            path: '/onboarding-screen', fullMatch: true),
        _i1.RouteConfig(AuthOptionRoute.name,
            path: '/auth-option-screen', fullMatch: true),
        _i1.RouteConfig(LoginRoute.name,
            path: '/login-screen', fullMatch: true),
        _i1.RouteConfig(SignupRoute.name,
            path: '/signup-screen', fullMatch: true),
        _i1.RouteConfig(EmailVerificationRoute.name,
            path: '/email-verification-screen', fullMatch: true),
        _i1.RouteConfig(VerifyPromptRoute.name,
            path: '/verify-prompt-screen', fullMatch: true),
        _i1.RouteConfig(VerifyPersonalInformationRoute.name,
            path: '/verify-personal-information-screen', fullMatch: true),
        _i1.RouteConfig(UploadIdentificationRoute.name,
            path: '/upload-identification-screen', fullMatch: true),
        _i1.RouteConfig(BankBvnVerificationRoute.name,
            path: '/bank-bvn-verification-screen', fullMatch: true),
        _i1.RouteConfig(BankOtpVerificationRoute.name,
            path: '/bank-otp-verification-screen', fullMatch: true),
        _i1.RouteConfig(VerificationSucessRoute.name,
            path: '/verification-sucess-screen', fullMatch: true),
        _i1.RouteConfig(HomeRoute.name, path: '/dashboard', fullMatch: true),
        _i1.RouteConfig(UnknownRoute.name, path: '*')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/onboarding-screen');

  static const String name = 'OnboardingRoute';
}

class AuthOptionRoute extends _i1.PageRouteInfo {
  const AuthOptionRoute() : super(name, path: '/auth-option-screen');

  static const String name = 'AuthOptionRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login-screen');

  static const String name = 'LoginRoute';
}

class SignupRoute extends _i1.PageRouteInfo {
  const SignupRoute() : super(name, path: '/signup-screen');

  static const String name = 'SignupRoute';
}

class EmailVerificationRoute extends _i1.PageRouteInfo {
  const EmailVerificationRoute()
      : super(name, path: '/email-verification-screen');

  static const String name = 'EmailVerificationRoute';
}

class VerifyPromptRoute extends _i1.PageRouteInfo {
  const VerifyPromptRoute() : super(name, path: '/verify-prompt-screen');

  static const String name = 'VerifyPromptRoute';
}

class VerifyPersonalInformationRoute extends _i1.PageRouteInfo {
  const VerifyPersonalInformationRoute()
      : super(name, path: '/verify-personal-information-screen');

  static const String name = 'VerifyPersonalInformationRoute';
}

class UploadIdentificationRoute extends _i1.PageRouteInfo {
  const UploadIdentificationRoute()
      : super(name, path: '/upload-identification-screen');

  static const String name = 'UploadIdentificationRoute';
}

class BankBvnVerificationRoute extends _i1.PageRouteInfo {
  const BankBvnVerificationRoute()
      : super(name, path: '/bank-bvn-verification-screen');

  static const String name = 'BankBvnVerificationRoute';
}

class BankOtpVerificationRoute extends _i1.PageRouteInfo {
  const BankOtpVerificationRoute()
      : super(name, path: '/bank-otp-verification-screen');

  static const String name = 'BankOtpVerificationRoute';
}

class VerificationSucessRoute extends _i1.PageRouteInfo {
  const VerificationSucessRoute()
      : super(name, path: '/verification-sucess-screen');

  static const String name = 'VerificationSucessRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/dashboard');

  static const String name = 'HomeRoute';
}

class UnknownRoute extends _i1.PageRouteInfo {
  const UnknownRoute() : super(name, path: '*');

  static const String name = 'UnknownRoute';
}
