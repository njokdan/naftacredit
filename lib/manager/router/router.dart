import 'package:auto_route/annotations.dart';
import 'package:naftacredit/_404.dart';
import 'package:naftacredit/features/auth/presentation/screens/auth_option_screen.dart';
import 'package:naftacredit/features/auth/presentation/screens/email_verification/email_verification_screen.dart';
import 'package:naftacredit/features/auth/presentation/screens/login_sreen.dart';
import 'package:naftacredit/features/auth/presentation/screens/signup_screen.dart';
import 'package:naftacredit/features/onborading/presentation/screens/splash_screen.dart';
import 'package:naftacredit/features/onborading/presentation/screens/onboarding_screen.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute<dynamic>>[
    AdaptiveRoute(
      initial: true,
      fullMatch: true,
      page: SplashScreen,
      maintainState: true,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: OnboardingScreen,
      maintainState: true,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: AuthOptionScreen,
      maintainState: true,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: LoginScreen,
      maintainState: true,
      cupertinoPageTitle: 'Login',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: SignupScreen,
      maintainState: true,
      cupertinoPageTitle: 'Sign Up',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: EmailVerificationScreen,
      maintainState: true,
    ),
    //
    AdaptiveRoute(
      path: '*',
      cupertinoPageTitle: 'Error 404',
      page: UnknownScreen,
      maintainState: true,
    ),
  ],
  replaceInRouteName: 'Screen,Route',
  preferRelativeImports: false,
)
class $AppRouter {}
