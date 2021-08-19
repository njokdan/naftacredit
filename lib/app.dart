import 'package:device_preview/device_preview.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:naftacredit/features/auth/presentation/managers/managers.dart';
import 'package:naftacredit/features/core/presentation/index.dart';
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
        BlocProvider<NetworkCubit>(create: (_) => getIt<NetworkCubit>()),
        BlocProvider<AuthWatcherCubit>(
          create: (_) => getIt<AuthWatcherCubit>(),
        ),
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
                locale: env.flavor.fold(
                  dev: () => DevicePreview.locale(context),
                  prod: () => null,
                ),
                routeInformationParser: _router.defaultRouteParser(),
                routerDelegate: _router.delegate(
                  navigatorObservers: () => <NavigatorObserver>[
                    if (env.flavor == BuildFlavor.prod)
                      FirebaseAnalyticsObserver(
                        analytics: getIt<FirebaseAnalytics>(),
                      ),
                  ],
                ),
                builder: (context, widget) => DevicePreview.appBuilder(
                  context,
                  Helpers.setup(
                    context,
                    _router,
                    ScreenUtilInit(
                      designSize: const Size(375, 812),
                      builder: () => widget!,
                    ),
                  ),
                ),
              ),
              material: (context) => MaterialApp.router(
                title: AppStrings.appName.capitalizeFirst(),
                debugShowCheckedModeBanner: false,
                theme: app.themeData(),
                darkTheme: AppTheme.dark().themeData(),
                locale: env.flavor.fold(
                  dev: () => DevicePreview.locale(context),
                  prod: () => null,
                ),
                routeInformationParser: _router.defaultRouteParser(),
                routerDelegate: _router.delegate(
                  navigatorObservers: () => <NavigatorObserver>[
                    if (env.flavor == BuildFlavor.prod)
                      FirebaseAnalyticsObserver(
                        analytics: getIt<FirebaseAnalytics>(),
                      ),
                  ],
                ),
                builder: (context, widget) => DevicePreview.appBuilder(
                  context,
                  Helpers.setup(
                    context,
                    _router,
                    ScreenUtilInit(
                      designSize: const Size(375, 812),
                      builder: () => widget!,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
