import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

mixin AppAssets {
  static const ASSETS_DIR = 'assets';
  static const SVG_DIR = '$ASSETS_DIR/svgs';
  static const IMAGES_DIR = '$ASSETS_DIR/images';
  static const UI_DIR = '$IMAGES_DIR/ui';
  // Sub-folders
  //////////////  IMAGES  ////////////
  static const String ONBOARDING_IMAGES_DIR = '$IMAGES_DIR/onboarding';

  /////////////  SVGS /////////////
  static const String AUTH_SVG_DIR = '$SVG_DIR/auth';
  static const String ONBOARDING_SVG_DIR = '$SVG_DIR/onboarding';
  static const String HOME_SVG_DIR = '$SVG_DIR/home';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////
  /// LOGO
  static const String logo = '$SVG_DIR/logo/logo.svg';
  static const String logoLoaded = '$SVG_DIR/logo/loaded.svg';
  static const String appStoreLogo = '$IMAGES_DIR/logo/appstore.png';
  static const String logoCircle = '$IMAGES_DIR/logo/circle.png';

  /// AUTHENTICATION (Login/Signup)
  static const String emailSuccess = '$SVG_DIR/verification/email_success.svg';
  static const String immigration = '$SVG_DIR/verification/immigration.svg';

  /// USER
  static const String user = '$IMAGES_DIR/user.png';
  static const String female = '$IMAGES_DIR/female.png';
  static const String unnamed = '$IMAGES_DIR/unnamed.png';

  /// ONBOARDING
  static const String onboarding0 = '$ONBOARDING_IMAGES_DIR/loan_access_0.png';
  static const String onboarding1 = '$ONBOARDING_IMAGES_DIR/loan_access_1.png';
  static const String onboarding2 = '$ONBOARDING_IMAGES_DIR/loan_access_2.png';

  /// UI
  static const String homePrimary = '$UI_DIR/Home_Primary.png';
  static const String homePrimaryWithTransaction =
      '$UI_DIR/Home_Primary_With_Transaction_History.png';
  static const String homeUnverified = '$UI_DIR/Home_Unverified_Info.png';
  static const String loansConfirmation = '$UI_DIR/Loan_Confirmation.png';
  static const String loansHome = '$UI_DIR/Loans_Home.png';
  static const String loansRequestLoans = '$UI_DIR/Loans_Request_Loan.png';
  static const String loansHistory = '$UI_DIR/Loans_With History.png';
  static const String walletHome = '$UI_DIR/Wallet_Home.png';
  static const String walletFunded = '$UI_DIR/Wallet_Funded.png';

  /// DASHBOARD
  static const String homeOutlined = '$HOME_SVG_DIR/home-outlined.svg';
  static const String sendOutlined = '$HOME_SVG_DIR/send-outlined.svg';
  static const String walletOutlined = '$HOME_SVG_DIR/wallet-outlined.svg';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////
  ///
  static const List<String> images = [
    female,
    unnamed,
    user,
    onboarding0,
    onboarding1,
    onboarding2,
    homePrimary,
    homePrimaryWithTransaction,
    homeUnverified,
    loansConfirmation,
    loansHistory,
    loansRequestLoans,
    loansHistory,
    walletHome,
    walletFunded,
  ];

  static SvgPicture google = SvgPicture.asset(
    '$AUTH_SVG_DIR/google.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture facebook([Color? color]) => SvgPicture.asset(
        '$AUTH_SVG_DIR/facebook.svg',
        height: 23,
        width: 23,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture apple([Color? color]) => SvgPicture.asset(
        '$AUTH_SVG_DIR/apple.svg',
        height: 22,
        width: 22,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture pdf = SvgPicture.asset(
    '$SVG_DIR/verification/pdf.svg',
    height: 40,
    width: 40,
    fit: BoxFit.contain,
  );

  static SvgPicture docx = SvgPicture.asset(
    '$SVG_DIR/verification/docs.svg',
    height: 40,
    width: 40,
    fit: BoxFit.contain,
  );

  static SvgPicture cameraOutlined = SvgPicture.asset(
    '$SVG_DIR/verification/camera_outlined.svg',
    height: 30,
    width: 30,
    color: Colors.white,
    fit: BoxFit.contain,
  );

  static SvgPicture cameraColored = SvgPicture.asset(
    '$SVG_DIR/verification/camera_colored.svg',
    height: 30,
    width: 30,
    fit: BoxFit.contain,
  );

  static SvgPicture folderOutlined = SvgPicture.asset(
    '$SVG_DIR/verification/folder_outlined.svg',
    height: 30,
    width: 30,
    color: Colors.white,
    fit: BoxFit.contain,
  );

  static SvgPicture folderColored = SvgPicture.asset(
    '$SVG_DIR/verification/folder_colored.svg',
    height: 30,
    width: 30,
    fit: BoxFit.contain,
  );
}
