import 'package:connectivity/connectivity.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class Modules {
  @preResolve
  Future<FirebaseApp> get firebaseApp => Firebase.initializeApp();

  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics()..logAppOpen();

  @lazySingleton
  FirebaseCrashlytics get firebaseCrashlytics => FirebaseCrashlytics.instance;

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  // @lazySingleton
  // FacebookLogin get facebookLogin => FacebookLogin();
}

@module
abstract class ServiceModules {
  @lazySingleton
  Connectivity get connectionStatus => Connectivity();

  @lazySingleton
  InternetConnectionChecker get connectionChecker =>
      InternetConnectionChecker();
}
