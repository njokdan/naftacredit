import 'package:firebase_analytics/observer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:wiredash/wiredash.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/manager/theme/theme.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

/// Application Router
final AppRouter _router = AppRouter();

class Naftacredit extends StatelessWidget {
  /// This is the entry point for Naftacredit App
  const Naftacredit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => getIt<ThemeCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, AppTheme>(
        builder: (context, app) => Portal(
          child: Wiredash(
            navigatorKey: _router.navigatorKey,
            projectId: env.kWiredashProjectId,
            secret: env.kWiredashSecret,
            theme: app.wiredashThemeData(),
            child: PlatformBuilder(
              cupertino: (context) => CupertinoApp.router(
                title: AppStrings.appName.capitalizeFirst(),
                debugShowCheckedModeBanner: false,
                theme: app.cupertinoThemeData(),
                color: Colors.deepPurpleAccent,
                routeInformationParser: _router.defaultRouteParser(),
                routerDelegate: _router.delegate(
                  navigatorObservers: () => <NavigatorObserver>[
                    if (env.flavor == BuildFlavor.prod)
                      FirebaseAnalyticsObserver(
                        analytics: getIt<FirebaseAnalytics>(),
                      ),
                  ],
                ),
                builder: (context, child) {
                  /// Setup Basic Utils
                  Helpers.setup(context, _router);
                  return child!;
                },
              ),
              material: (context) => MaterialApp.router(
                title: AppStrings.appName.capitalizeFirst(),
                debugShowCheckedModeBanner: false,
                theme: app.themeData(),
                darkTheme: AppTheme.dark().themeData(),
                routeInformationParser: _router.defaultRouteParser(),
                routerDelegate: _router.delegate(
                  navigatorObservers: () => <NavigatorObserver>[
                    if (env.flavor == BuildFlavor.prod)
                      FirebaseAnalyticsObserver(
                        analytics: getIt<FirebaseAnalytics>(),
                      ),
                  ],
                ),
                builder: (context, child) {
                  /// Setup Basic Utils
                  Helpers.setup(context, _router);
                  return child!;
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
