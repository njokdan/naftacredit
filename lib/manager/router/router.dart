import 'package:auto_route/annotations.dart';
import 'package:naftacredit/_404.dart';
import 'package:naftacredit/features/auth/presentation/screens/index.dart';
import 'package:naftacredit/features/auth/presentation/screens/id_verification/export.dart';
import 'package:naftacredit/features/home/presentation/screens/index.dart';
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
      fullscreenDialog: true,
      page: OTPVerificationScreen,
      maintainState: true,
      path: '/otp-verification',
      cupertinoPageTitle: 'OTP Screen',
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
    AdaptiveRoute(
      path: '/dashboard',
      fullMatch: true,
      page: HomeScreen,
      maintainState: true,
      cupertinoPageTitle: 'Dashboard',
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
