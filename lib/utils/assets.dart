import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

mixin AppAssets {
  static const ASSETS_DIR = 'assets';
  static const SVG_DIR = '$ASSETS_DIR/svgs';
  static const IMAGES_DIR = '$ASSETS_DIR/images';
  // Sub-folders
  //////////////  IMAGES  ////////////
  static const String ONBOARDING_IMAGES_DIR = '$IMAGES_DIR/onboarding';

  /////////////  SVGS /////////////
  static const String AUTH_SVG_DIR = '$SVG_DIR/auth';
  static const String ONBOARDING_SVG_DIR = '$SVG_DIR/onboarding';

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

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////

  static SvgPicture google = SvgPicture.asset(
    '$AUTH_SVG_DIR/google.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture facebook = SvgPicture.asset(
    '$AUTH_SVG_DIR/facebook.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );
}
