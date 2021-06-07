import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:naftacredit/features/onborading/domain/onboarding.dart';
import 'package:naftacredit/features/onborading/presentation/managers/index.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/widgets/widgets.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OnboardingCubit>()..attachControllerListener(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.fromHex('600388'),
              AppColors.fromHex('05078E'),
              AppColors.fromHex('37058C'),
              AppColors.fromHex('600388'),
            ],
            begin: Alignment(-2.3, 0.4),
            end: Alignment.bottomRight,
            stops: [0.1935, 0.4246, 0.6526, 0.8888],
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (c, s) => PageView.builder(
                  itemCount: context.read<OnboardingCubit>().items.size,
                  controller: s.controller,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) => OnBoardingItemBuilder(
                    item: context
                        .read<OnboardingCubit>()
                        .items
                        .elementAtOrNull(i),
                  ),
                ),
              ),
            ),
            //
            Positioned(
              left: App.longest * 0.02,
              bottom: App.longest * 0.04,
              child: BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (c, s) => AnimatedSmoothIndicator(
                  activeIndex: s.currentIndex,
                  count: context.read<OnboardingCubit>().items.size,
                  effect: ExpandingDotsEffect(
                    expansionFactor: 3.5,
                    activeDotColor: Helpers.foldTheme(
                      light: () => AppColors.accentColor,
                      dark: () => AppColors.accentColor.shade200,
                    ),
                    radius: 100.0,
                    spacing: 7.0,
                    dotHeight: App.height * 0.005,
                    dotWidth: 7.0,
                    dotColor: AppColors.accentColor.shade100,
                  ),
                ),
              ),
            ),
            //
            Positioned(
              right: App.longest * 0.02,
              bottom: App.longest * 0.02,
              child: BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (c, s) => Visibility(
                  visible: context
                      .read<OnboardingCubit>()
                      .isLast(right(s.currentIndex)),
                  child: AppButton(
                    onPressed: () => navigator.pushAndPopUntil(
                      AuthOptionRoute(),
                      predicate: (_) => false,
                    ),
                    textColor: Colors.white,
                    backgroundColor: Helpers.foldTheme(
                      light: () => AppColors.accentColor,
                      dark: () => AppColors.accentColor.shade200,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 14.0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    height: 23,
                    text: 'Continue',
                  ),
                ),
              ),
            ),
            //
            Positioned(
              right: App.longest * 0.02,
              bottom: App.longest * 0.02,
              child: BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (c, s) => Visibility(
                  visible: !context
                      .read<OnboardingCubit>()
                      .isLast(right(s.currentIndex)),
                  child: AppIconButton(
                    onPressed: context.read<OnboardingCubit>().next,
                    backgroundColor: Helpers.foldTheme(
                      light: () => AppColors.accentColor,
                      dark: () => AppColors.accentColor.shade200,
                    ),
                    child: Icon(
                      Icons.navigate_next_rounded,
                      color: Helpers.foldTheme(
                        light: () => Colors.white,
                        dark: () => Colors.white70,
                      ),
                      size: 28.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingItemBuilder extends StatelessWidget {
  final OnboardingItem<String>? item;

  const OnBoardingItemBuilder({
    Key? key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          // Positioned.fill(
          //   top: App.longest * 0.12,
          //   child: SvgPicture.asset(AppAssets.logo),
          // ),
          Positioned(
            top: App.longest * 0.62,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
                vertical: App.shortest * 0.07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    '${item!.title}',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Helpers.foldTheme(
                            light: () => AppColors.accentColor,
                            dark: () => AppColors.accentColor.shade50,
                          ),
                          fontWeight: FontWeight.w700,
                        ),
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                  //
                  VerticalSpace(height: 20.0),
                  //
                  AutoSizeText(
                    '${item!.description}',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontSize: 17.0,
                          // wordSpacing: 2.7,
                          letterSpacing: 1.0,
                        ),
                    softWrap: true,
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
