import 'package:async/async.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naftacredit/features/auth/presentation/managers/managers.dart';
import 'package:naftacredit/features/auth/presentation/screens/index.dart';
import 'package:naftacredit/features/onborading/presentation/managers/index.dart';
import 'package:naftacredit/features/onborading/presentation/screens/splash_loader.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

class SplashScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  State<SplashScreen> createState() => _SplashScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OnboardingCubit>(),
      child: this,
    );
  }
}

class _SplashScreenState extends State<SplashScreen> {
  final AsyncMemoizer<dynamic> _memoizer = AsyncMemoizer();

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: FutureBuilder(
        future: _memoizer.runOnce(
          () => Future.delayed(
            env.splashDuration,
            () => BlocProvider.of<AuthWatcherCubit>(App.context)
                .subscribeToAuthChanges(
              (either) => either.fold(
                (failure) => failure.foldCode(
                  orElse: () => null,
                  is401: () => navigator.pushAndPopUntil(
                    const OnboardingRoute(),
                    predicate: (_) => false,
                  ),
                  is1103: () => navigator.pushAndPopUntil(
                    VerifyPersonalInformationRoute(),
                    predicate: (_) => false,
                  ),
                  is1102: () => navigator.pushAndPopUntil(
                    const VerifyPromptRoute(),
                    predicate: (_) => false,
                  ),
                  is1101: () => navigator.pushAndPopUntil(
                    OTPVerificationRoute(type: OTPVerificationScreenType.email),
                    predicate: (_) => false,
                  ),
                ),
                (option) => option.fold(
                  () => navigator.pushAndPopUntil(
                    const OnboardingRoute(),
                    predicate: (_) => false,
                  ),
                  (_) => navigator.pushAndPopUntil(
                    DashboardRoute(),
                    predicate: (_) => false,
                  ),
                ),
              ),
            ),
          ),
        ),
        builder: (_, __) => Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  AppAssets.logo,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            //
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: App.height * 0.05,
              child: BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                builder: (c, s) => Visibility(
                  visible: s.isLoading,
                  child: const SplashPositionedLoader(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
