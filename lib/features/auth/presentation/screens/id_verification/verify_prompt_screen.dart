import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

/// A stateless widget to render VerifyPromptScreen.
class VerifyPromptScreen extends StatelessWidget with AutoRouteWrapper {
  const VerifyPromptScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Helpers.appPadding,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: App.shortest * 0.22,
                          maxWidth: App.shortest * 0.23,
                        ),
                        child: SvgPicture.asset(
                          AppAssets.emailSuccess,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.07)),
                    //
                    Flexible(
                      child: AutoSizeText(
                        'One More Thing',
                        softWrap: true,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Helpers.foldTheme(
                                light: () => Palette.accentColor,
                                dark: () => Palette.accentColor.shade50,
                              ),
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                    //
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: App.shortest * 0.04,
                        ),
                        child: AutoSizeText(
                          'Welcome onboard. To help setup your account '
                          'and qualify you for a loan, we’ll like to verify your ID.',
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 16.0,
                                    letterSpacing: Helpers.letterSpacing,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //
          Positioned(
            left: 0,
            right: 0,
            bottom: App.shortest * 0.1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Container(
                      height: App.shortest * 0.1,
                      child: Material(
                        color: const Color(0xffFDF4DE),
                        borderRadius: BorderRadius.circular(8.0),
                        child: Center(
                          child: AutoSizeText(
                            'We promise your information is safe.',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Colors.amber.shade700,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  Flexible(child: VerticalSpace(height: App.shortest * 0.1)),
                  //
                  AppButton(
                    onPressed: () => navigator.popAndPush(
                      VerifyPersonalInformationRoute(),
                    ),
                    text: 'Verify my ID',
                    textColor: Colors.white,
                    backgroundColor: Helpers.foldTheme(
                      light: () => Palette.accentColor,
                      dark: () => Colors.transparent,
                    ),
                    splashColor: Helpers.foldTheme(
                      light: () => Colors.white30,
                      dark: () => Colors.grey.shade800,
                    ),
                    side: Helpers.foldTheme(
                      light: () => null,
                      dark: () => const BorderSide(color: Colors.white),
                    ),
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
