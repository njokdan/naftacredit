import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

class AuthOptionScreen extends StatelessWidget with AutoRouteWrapper {
  final Rect kLogoRect = Rect.fromCenter(
    center: Offset(App.shortest * 0.45, App.longest * 0.35),
    width: App.shortest * 0.5,
    height: App.shortest * 0.5,
  );

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Helpers.appPadding,
        ),
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
            Positioned.fromRect(
              rect: kLogoRect,
              child: SvgPicture.asset(
                AppAssets.logo,
                fit: BoxFit.cover,
                color: Colors.white,
                clipBehavior: Clip.antiAlias,
              ),
            ),
            //
            Positioned.fill(
              top: App.longest * 0.6,
              bottom: App.longest * 0.07,
              // rect: RelativeRect.fromRect(
              //   kLogoRect,
              //   Rect.fromLTWH(0, 0, App.width, App.longest * 0.2),
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: App.shortest * 0.05,
                    ),
                    child: AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'Nafta Credit aims to help you simplify '
                              'loan accessibility and bill payment needs. ',
                        ),
                        TextSpan(
                          text: '\nCreate',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: ' an account or '),
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: ' to get started.'),
                      ]),
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),
                  //
                  VerticalSpace(height: App.shortest * 0.1),
                  //
                  AppButton(
                    onPressed: () => navigator.push(SignupRoute()),
                    text: 'Create an Account',
                    textColor: AppColors.accentColor,
                    backgroundColor: Colors.white,
                    height: 30.0,
                  ),
                  //
                  VerticalSpace(height: App.shortest * 0.04),
                  //
                  AppButton(
                    onPressed: () => navigator.push(LoginRoute()),
                    text: 'Login',
                    textColor: Colors.white,
                    backgroundColor: Colors.transparent,
                    splashColor: Colors.grey.withOpacity(0.3),
                    side: BorderSide(width: 1.0, color: Colors.white),
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
