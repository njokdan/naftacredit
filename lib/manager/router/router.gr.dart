// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i10;
import 'package:flutter/material.dart' as _i2;
import 'package:naftacredit/_404.dart' as _i8;
import 'package:naftacredit/features/auth/presentation/screens/id_verification/export.dart'
    as _i6;
import 'package:naftacredit/features/auth/presentation/screens/index.dart'
    as _i5;
import 'package:naftacredit/features/home/presentation/pages/pages.dart' as _i9;
import 'package:naftacredit/features/home/presentation/screens/index.dart'
    as _i7;
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
    OTPVerificationRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OTPVerificationRouteArgs>(
              orElse: () => const OTPVerificationRouteArgs());
          return _i5.OTPVerificationScreen(
              key: args.key,
              bvn: args.bvn,
              title: args.title,
              intended: args.intended,
              type: args.type);
        },
        fullscreenDialog: true,
        title: 'OTP'),
    VerifyPromptRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.VerifyPromptScreen();
        },
        fullscreenDialog: true),
    VerifyPersonalInformationRoute.name: (routeData) =>
        _i1.AdaptivePage<dynamic>(
            routeData: routeData,
            builder: (data) {
              final args = data.argsAs<VerifyPersonalInformationRouteArgs>(
                  orElse: () => const VerifyPersonalInformationRouteArgs());
              return _i6.VerifyPersonalInformationScreen(key: args.key);
            },
            title: 'Personal Information'),
    UploadIdentificationRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.UploadIdentificationScreen();
        },
        title: 'Upload Identification'),
    BankBvnVerificationRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.BankBvnVerificationScreen();
        },
        title: 'BVN Verification'),
    VerificationSucessRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.VerificationSucessScreen();
        },
        fullscreenDialog: true),
    DashboardRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.DashboardScreen();
        }),
    UnknownRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.UnknownScreen();
        },
        title: 'Error 404'),
    HomeRouter.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    LoansRouter.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    WalletRouter.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    HomePage.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.HomePage();
        }),
    LoansPage.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.LoansPage();
        }),
    WalletPage.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.WalletPage();
        })
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
        _i1.RouteConfig(OTPVerificationRoute.name,
            path: '/otp-verification', fullMatch: true),
        _i1.RouteConfig(VerifyPromptRoute.name,
            path: '/verify-prompt-screen', fullMatch: true),
        _i1.RouteConfig(VerifyPersonalInformationRoute.name,
            path: '/verify-personal-information-screen', fullMatch: true),
        _i1.RouteConfig(UploadIdentificationRoute.name,
            path: '/upload-identification-screen', fullMatch: true),
        _i1.RouteConfig(BankBvnVerificationRoute.name,
            path: '/bank-bvn-verification-screen', fullMatch: true),
        _i1.RouteConfig(VerificationSucessRoute.name,
            path: '/verification-sucess-screen', fullMatch: true),
        _i1.RouteConfig(DashboardRoute.name,
            path: 'bottom-navigation',
            fullMatch: true,
            children: [
              _i1.RouteConfig(HomeRouter.name, path: 'home', children: [
                _i1.RouteConfig(HomePage.name, path: ''),
                _i1.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ]),
              _i1.RouteConfig(LoansRouter.name, path: 'loans', children: [
                _i1.RouteConfig(LoansPage.name, path: ''),
                _i1.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ]),
              _i1.RouteConfig(WalletRouter.name, path: 'wallet', children: [
                _i1.RouteConfig(WalletPage.name, path: ''),
                _i1.RouteConfig('*#redirect',
                    path: '*', redirectTo: '', fullMatch: true)
              ])
            ]),
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

class OTPVerificationRoute extends _i1.PageRouteInfo<OTPVerificationRouteArgs> {
  OTPVerificationRoute(
      {_i10.Key? key,
      int? bvn,
      String? title,
      _i10.Route<dynamic>? intended,
      _i5.OTPVerificationScreenType? type})
      : super(name,
            path: '/otp-verification',
            args: OTPVerificationRouteArgs(
                key: key,
                bvn: bvn,
                title: title,
                intended: intended,
                type: type));

  static const String name = 'OTPVerificationRoute';
}

class OTPVerificationRouteArgs {
  const OTPVerificationRouteArgs(
      {this.key, this.bvn, this.title, this.intended, this.type});

  final _i10.Key? key;

  final int? bvn;

  final String? title;

  final _i10.Route<dynamic>? intended;

  final _i5.OTPVerificationScreenType? type;
}

class VerifyPromptRoute extends _i1.PageRouteInfo {
  const VerifyPromptRoute() : super(name, path: '/verify-prompt-screen');

  static const String name = 'VerifyPromptRoute';
}

class VerifyPersonalInformationRoute
    extends _i1.PageRouteInfo<VerifyPersonalInformationRouteArgs> {
  VerifyPersonalInformationRoute({_i10.Key? key})
      : super(name,
            path: '/verify-personal-information-screen',
            args: VerifyPersonalInformationRouteArgs(key: key));

  static const String name = 'VerifyPersonalInformationRoute';
}

class VerifyPersonalInformationRouteArgs {
  const VerifyPersonalInformationRouteArgs({this.key});

  final _i10.Key? key;
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

class VerificationSucessRoute extends _i1.PageRouteInfo {
  const VerificationSucessRoute()
      : super(name, path: '/verification-sucess-screen');

  static const String name = 'VerificationSucessRoute';
}

class DashboardRoute extends _i1.PageRouteInfo {
  const DashboardRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'bottom-navigation', initialChildren: children);

  static const String name = 'DashboardRoute';
}

class UnknownRoute extends _i1.PageRouteInfo {
  const UnknownRoute() : super(name, path: '*');

  static const String name = 'UnknownRoute';
}

class HomeRouter extends _i1.PageRouteInfo {
  const HomeRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

class LoansRouter extends _i1.PageRouteInfo {
  const LoansRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'loans', initialChildren: children);

  static const String name = 'LoansRouter';
}

class WalletRouter extends _i1.PageRouteInfo {
  const WalletRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'wallet', initialChildren: children);

  static const String name = 'WalletRouter';
}

class HomePage extends _i1.PageRouteInfo {
  const HomePage() : super(name, path: '');

  static const String name = 'HomePage';
}

class LoansPage extends _i1.PageRouteInfo {
  const LoansPage() : super(name, path: '');

  static const String name = 'LoansPage';
}

class WalletPage extends _i1.PageRouteInfo {
  const WalletPage() : super(name, path: '');

  static const String name = 'WalletPage';
}
