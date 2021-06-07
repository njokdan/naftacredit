import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:naftacredit/utils/colors.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

class LoginScreen extends StatelessWidget with AutoRouteWrapper {
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final TapGestureRecognizer tapRecognizer = TapGestureRecognizer()
    ..onTap = (() => navigator.replace(SignupRoute()));

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
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
                        'Welcome Back',
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
                        'We’re so happy to see you. You can enter your details '
                        'to access and manage your loans.',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              // color: Colors.grey.shade700,
                              fontSize: 16.0,
                              letterSpacing: Helpers.letterSpacing,
                            ),
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.05)),
                    //
                    TextFormInputLabel(text: 'Email Address'),
                    //
                    AdaptiveTextFormInput(
                      hintText: 'johndoe@email.com',
                      keyboardType: TextInputType.emailAddress,
                      autoFillHints: [AutofillHints.email],
                      focus: emailFocus,
                      next: passwordFocus,
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.03)),
                    //
                    TextFormInputLabel(text: 'Password'),
                    //
                    AdaptiveTextFormInput(
                      enableSuggestions: false,
                      autoCorrect: false,
                      obscureText: true,
                      autoFillHints: [
                        AutofillHints.newPassword,
                        AutofillHints.password,
                      ],
                      decoration: InputDecoration(
                        hintText: 'secret',
                        suffixIcon: Material(
                          color: Colors.transparent,
                          shape: CircleBorder(),
                          clipBehavior: Clip.hardEdge,
                          child: IconButton(
                            icon: Icon(
                              AppIcons.eyelash_open,
                              color: Helpers.computeLuminance(
                                Theme.of(context).scaffoldBackgroundColor,
                              ),
                            ),
                            onPressed: () {
                              log.wtf('hello clicked');
                            },
                          ),
                        ),
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.03)),
                    //
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextFormInputLabel(
                        onPressed: () {
                          log.w('forgot screen');
                        },
                        text: 'Forgot Password?',
                        fontSize: 16.0,
                        textColor: Helpers.foldTheme(
                          light: () => AppColors.accentColor,
                          dark: () => Colors.white60,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.15)),
                    //
                    AppButton(
                      onPressed: () {},
                      text: 'Login',
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
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: App.shortest * 0.04,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText.rich(
                TextSpan(children: [
                  TextSpan(text: 'Don\'t have an account? '),
                  TextSpan(
                    text: 'Sign Up',
                    recognizer: tapRecognizer,
                    style: TextStyle(
                      color: Helpers.foldTheme(
                        context: context,
                        light: () => AppColors.accentColor,
                        dark: () => AppColors.accentColor.shade100,
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
    );
  }
}
