import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:naftacredit/_404.dart';
import 'package:naftacredit/features/auth/presentation/screens/index.dart';
import 'package:naftacredit/features/auth/presentation/screens/id_verification/export.dart';
import 'package:naftacredit/features/home/presentation/pages/pages.dart';
import 'package:naftacredit/features/home/presentation/screens/index.dart';
import 'package:naftacredit/features/onborading/presentation/screens/splash_screen.dart';
import 'package:naftacredit/features/onborading/presentation/screens/onboarding_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  preferRelativeImports: false,
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
      fullscreenDialog: true,
      page: OTPVerificationScreen,
      maintainState: true,
      path: '/otp-verification',
      cupertinoPageTitle: 'OTP',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: VerifyPromptScreen,
      maintainState: true,
      fullscreenDialog: true,
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: VerifyPersonalInformationScreen,
      maintainState: true,
      cupertinoPageTitle: 'Personal Information',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: UploadIdentificationScreen,
      maintainState: true,
      cupertinoPageTitle: 'Upload Identification',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: BankBvnVerificationScreen,
      maintainState: true,
      cupertinoPageTitle: 'BVN Verification',
    ),
    //
    AdaptiveRoute(
      fullMatch: true,
      page: VerificationSucessScreen,
      maintainState: true,
      fullscreenDialog: true,
    ),
    //
    dashboardRouter,
    //
    AdaptiveRoute(
      path: '*',
      cupertinoPageTitle: 'Error 404',
      page: UnknownScreen,
      maintainState: true,
    ),
  ],
)
class $AppRouter {}

const dashboardRouter = AutoRoute(
  path: 'bottom-navigation',
  fullMatch: true,
  page: DashboardScreen,
  maintainState: true,
  children: [
    AutoRoute(
      path: 'home',
      name: 'HomeRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: HomePage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    //
    AutoRoute(
      path: 'loans',
      name: 'LoansRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: LoansPage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    //
    AutoRoute(
      path: 'wallet',
      name: 'WalletRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: WalletPage),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
);
