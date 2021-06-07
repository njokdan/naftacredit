import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naftacredit/features/auth/presentation/managers/managers.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

class EmailVerificationScreen extends StatelessWidget with AutoRouteWrapper {
  final TapGestureRecognizer tapRecognizer = TapGestureRecognizer()
    ..onTap = (() => print('resend email otp'));

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              clipBehavior: Clip.antiAlias,
              controller: ScrollController(),
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
              ).copyWith(top: App.longest * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: AutoSizeText(
                      'Email Verification',
                      softWrap: true,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Helpers.foldTheme(
                              light: () => AppColors.accentColor,
                              dark: () => AppColors.accentColor.shade50,
                            ),
                            fontSize: 27.0,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  //
                  Flexible(child: VerticalSpace(height: App.shortest * 0.05)),
                  //
                  Flexible(
                    child: AutoSizeText(
                      'We sent an OTP Code to the email address you provided. Please enter the code below.',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            // color: Colors.grey.shade700,
                            fontSize: 16.0,
                            letterSpacing: Helpers.letterSpacing,
                          ),
                    ),
                  ),
                  //
                  Flexible(child: VerticalSpace(height: App.shortest * 0.1)),
                  //
                  BlocProvider(
                    create: (_) => getIt<OtpCodeCubit>(),
                    child: PinInputWidget<OtpCodeCubit, OtpCodeState>(
                      length: 5,
                      validate: false,
                      cursorColor: Helpers.foldTheme(
                        light: () => null,
                        dark: () => Colors.white,
                      ),
                      keyboardType: TextInputType.text,
                      onChanged: (_) {},
                      onCompleted: (_) {},
                      validator: (state) => null,
                    ),
                  ),
                  //
                  Flexible(child: VerticalSpace(height: App.shortest * 0.1)),
                  //
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Align(
                      alignment: Alignment.center,
                      child: AutoSizeText.rich(
                        TextSpan(children: [
                          TextSpan(text: 'Didn’t receieve Code? '),
                          TextSpan(
                            text: 'Retry',
                            recognizer: tapRecognizer,
                            style: TextStyle(
                              color: Helpers.foldTheme(
                                context: context,
                                light: () => AppColors.accentColor,
                                dark: () => AppColors.accentColor.shade50,
                              ),
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: App.shortest * 0.15,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
              ),
              child: AppButton(
                onPressed: () {},
                text: 'Verify Email',
                textColor: Colors.white,
                backgroundColor: Helpers.foldTheme(
                  light: () => AppColors.accentColor,
                  dark: () => Colors.transparent,
                ),
                splashColor: Helpers.foldTheme(
                  light: () => Colors.grey.shade300,
                  dark: () => Colors.grey.shade800,
                ),
                side: Helpers.foldTheme(
                  light: () => null,
                  dark: () => BorderSide(color: Colors.white),
                ),
                height: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
