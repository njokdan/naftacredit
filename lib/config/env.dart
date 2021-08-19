import 'dart:io';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:naftacredit/config/secrets.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/utils/utils.dart';

enum BuildFlavor { prod, dev }

BuildEnvironment get env => _env!;
BuildEnvironment? _env;

class BuildEnvironment implements Secrets {
  final BuildFlavor flavor;
  final Uri? baseUri;

  factory BuildEnvironment.factory({
    BuildFlavor? flavor,
    Uri? uri,
  }) =>
      BuildEnvironment._(
        flavor: flavor!,
        baseUri: uri,
      );

  BuildEnvironment._({
    this.flavor = BuildFlavor.dev,
    this.baseUri,
  });

  String get kWiredashProjectId => Platform.isIOS
      ? Secrets.WIREDASH_IOS_PROJECT_ID
      : Secrets.WIREDASH_ANDROID_PROJECT_ID;

  String get kWiredashSecret => Platform.isIOS
      ? Secrets.WIREDASH_IOS_PROJECT_SECRET
      : Secrets.WIREDASH_ANDROID_PROJECT_SECRET;

  Duration get splashDuration => flavor.fold(
        dev: () => const Duration(milliseconds: 1200),
        prod: () => const Duration(milliseconds: 1500),
      );

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({@required BuildFlavor? flavor}) async {
    _env ??= BuildEnvironment.factory(
      flavor: flavor,
      uri: Uri.https(EndPoints.APP_DOMAIN, EndPoints.API_ENDPOINT),
    );

    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    await flavor?.fold(
      dev: () async {
        await locator(Environment.dev);
        await getIt<FirebaseCrashlytics>()
            .setCrashlyticsCollectionEnabled(false);
      },
      prod: () async {
        await locator(Environment.prod);
        await getIt<FirebaseCrashlytics>()
            .setCrashlyticsCollectionEnabled(true);
      },
    );
  }
}

extension XBuildFlavor on BuildFlavor {
  U fold<U>({
    U Function()? dev,
    required U Function() prod,
  }) {
    switch (this) {
      case BuildFlavor.dev:
        return dev?.call() ?? prod.call();
      case BuildFlavor.prod:
      default:
        return prod.call();
    }
  }
}
