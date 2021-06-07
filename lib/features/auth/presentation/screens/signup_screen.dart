import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

class SignupScreen extends StatelessWidget with AutoRouteWrapper {
  final FocusNode firstNameFocus = FocusNode();
  final FocusNode lastNameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode phoneFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode confirmPasswordFocus = FocusNode();
  final TapGestureRecognizer tapRecognizer = TapGestureRecognizer()
    ..onTap = (() => navigator.replace(LoginRoute()));

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
                        'Create an Account',
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
                        'Provide your basic user information so you can get started with accessing loans.',
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
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormInputLabel(text: 'First Name'),
                                //
                                Flexible(
                                  child: AdaptiveTextFormInput(
                                    hintText: 'John',
                                    keyboardType: TextInputType.name,
                                    capitalization: TextCapitalization.words,
                                    autoFillHints: [
                                      AutofillHints.name,
                                      AutofillHints.givenName,
                                      // AutofillHints.familyName,
                                      AutofillHints.middleName,
                                    ],
                                    focus: firstNameFocus,
                                    next: lastNameFocus,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //
                          HorizontalSpace(width: App.shortest * 0.05),
                          //
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormInputLabel(text: 'Last Name'),
                                //
                                Flexible(
                                  child: AdaptiveTextFormInput(
                                    hintText: 'Doe',
                                    keyboardType: TextInputType.name,
                                    capitalization: TextCapitalization.words,
                                    autoFillHints: [AutofillHints.familyName],
                                    focus: lastNameFocus,
                                    next: emailFocus,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.03)),
                    //
                    TextFormInputLabel(text: 'Email Address'),
                    //
                    Flexible(
                      child: AdaptiveTextFormInput(
                        hintText: 'johndoe@email.com',
                        keyboardType: TextInputType.emailAddress,
                        autoFillHints: [AutofillHints.email],
                        focus: emailFocus,
                        next: phoneFocus,
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.03)),
                    //
                    TextFormInputLabel(text: 'Phone Number'),
                    //
                    Flexible(
                      child: AdaptiveTextFormInput(
                        hintText: '08123456789',
                        maxLength: 11,
                        maxLengthEnforced: true,
                        keyboardType: TextInputType.phone,
                        autoFillHints: [
                          AutofillHints.telephoneNumber,
                          AutofillHints.telephoneNumberLocal,
                          AutofillHints.telephoneNumberNational,
                        ],
                        focus: phoneFocus,
                        next: passwordFocus,
                      ),
                    ),
                    //
                    TextFormInputLabel(text: 'Password'),
                    //
                    Flexible(
                      child: AdaptiveTextFormInput(
                        enableSuggestions: false,
                        autoCorrect: false,
                        obscureText: true,
                        focus: passwordFocus,
                        next: confirmPasswordFocus,
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
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.03)),
                    //
                    TextFormInputLabel(text: 'Retype Password'),
                    //
                    Flexible(
                      child: AdaptiveTextFormInput(
                        enableSuggestions: false,
                        autoCorrect: false,
                        obscureText: true,
                        focus: confirmPasswordFocus,
                        autoFillHints: [
                          AutofillHints.newPassword,
                          AutofillHints.password,
                        ],
                        hintText: '*********',
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.15)),
                    //
                    Flexible(
                      child: AppButton(
                        onPressed: () => navigator.popAndPush(
                          EmailVerificationRoute(),
                          // predicate: (_) => false,
                        ),
                        text: 'Create Account',
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
                  TextSpan(text: 'Already have an account? '),
                  TextSpan(
                    text: 'Log In',
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
