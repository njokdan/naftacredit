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

class SignupScreen extends StatelessWidget with AutoRouteWrapper {
  final TapGestureRecognizer tapRecognizer = TapGestureRecognizer()
    ..onTap = (() => navigator.replace(const LoginRoute()));

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.isLeft() &&
                    c.status.getOrElse(() => null)!.fold(
                          (f) => f.foldCode(
                            // is1106: () => p.isLoading != c.isLoading,
                            orElse: () => false,
                          ),
                          (_) => false,
                        ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (th) => th?.fold(
            (f) => PopupDialog.error(message: f.message).render(c),
            (r) => PopupDialog.success(message: r?.message).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(
          horizontal: Helpers.appPadding,
        ).copyWith(top: App.longest * 0.02),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(child: VerticalSpace(height: App.shortest * 0.05)),
                  //
                  Flexible(
                    child: AutoSizeText(
                      'Create an Account',
                      softWrap: true,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Helpers.foldTheme(
                              light: () => Palette.accentColor,
                              dark: () => Palette.accentColor.shade50,
                            ),
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.96,
                          ),
                    ),
                  ),
                  //
                  Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                  //
                  Flexible(
                    child: AutoSizeText(
                      'Provide your basic user information '
                      'so you can get started with accessing loans.',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            // color: Colors.grey.shade700,
                            fontSize: 16.0,
                            letterSpacing: Helpers.labelLetterSpacing,
                          ),
                    ),
                  ),
                  //
                  Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                  //
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (c, s) => Form(
                      autovalidateMode: s.validate
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const TextFormInputLabel(
                                        text: 'First Name',
                                        letterSpacing:
                                            Helpers.labelLetterSpacing,
                                      ),
                                      //
                                      Flexible(
                                        child: AdaptiveTextFormInput(
                                          hintText: 'John',
                                          keyboardType: TextInputType.name,
                                          disabled: s.isLoading,
                                          capitalization:
                                              TextCapitalization.words,
                                          autoFillHints: [
                                            AutofillHints.name,
                                            AutofillHints.givenName,
                                            AutofillHints.familyName,
                                            AutofillHints.middleName,
                                          ],
                                          focus: AuthState.firstNameFocus,
                                          next: AuthState.lastNameFocus,
                                          validate: s.validate,
                                          errorText:
                                              s.user.firstName.value.fold(
                                            (f) => f.message,
                                            (_) => null,
                                          ),
                                          onChanged: c
                                              .read<AuthCubit>()
                                              .firstNameChanged,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const TextFormInputLabel(
                                        text: 'Last Name',
                                        letterSpacing:
                                            Helpers.labelLetterSpacing,
                                      ),
                                      //
                                      Flexible(
                                        child: AdaptiveTextFormInput(
                                          hintText: 'Doe',
                                          disabled: s.isLoading,
                                          keyboardType: TextInputType.name,
                                          capitalization:
                                              TextCapitalization.words,
                                          autoFillHints: [
                                            AutofillHints.name,
                                            AutofillHints.familyName,
                                          ],
                                          focus: AuthState.lastNameFocus,
                                          next: AuthState.emailFocus,
                                          validate: s.validate,
                                          errorText: s.user.lastName.value.fold(
                                            (f) => f.message,
                                            (_) => null,
                                          ),
                                          onChanged: c
                                              .read<AuthCubit>()
                                              .lastNameChanged,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //
                          Flexible(
                            child: VerticalSpace(height: App.shortest * 0.03),
                          ),
                          //
                          const TextFormInputLabel(
                            text: 'Email Address',
                            letterSpacing: Helpers.labelLetterSpacing,
                          ),
                          //
                          Flexible(
                            child: AdaptiveTextFormInput(
                              hintText: 'johndoe@email.com',
                              disabled: s.isLoading,
                              keyboardType: TextInputType.emailAddress,
                              autoFillHints: [AutofillHints.email],
                              focus: AuthState.emailFocus,
                              next: AuthState.passwordFocus,
                              validate: s.validate,
                              errorText: s.user.email.value.fold(
                                (f) => f.message,
                                (_) => s.status.fold(
                                  () => null,
                                  (a) => a?.fold(
                                    (f) => f.errors?.email?.firstOrNone,
                                    (_) => null,
                                  ),
                                ),
                              ),
                              onChanged: c.read<AuthCubit>().emailChanged,
                            ),
                          ),
                          //
                          Flexible(
                            child: VerticalSpace(height: App.shortest * 0.03),
                          ),
                          //
                          const TextFormInputLabel(
                            text: 'Password',
                            letterSpacing: Helpers.labelLetterSpacing,
                          ),
                          //
                          Flexible(
                            child: AdaptiveTextFormInput(
                              enableSuggestions: false,
                              autoCorrect: false,
                              disabled: s.isLoading,
                              obscureText: s.isPasswordHidden,
                              focus: AuthState.passwordFocus,
                              next: AuthState.confirmPasswordFocus,
                              validate: s.validate,
                              autoFillHints: [
                                AutofillHints.newPassword,
                                AutofillHints.password,
                              ],
                              errorText: s.user.password.value.fold(
                                (f) => f.message,
                                (_) => null,
                              ),
                              onChanged: c.read<AuthCubit>().passwordChanged,
                              decoration: InputDecoration(
                                hintText: 'secret',
                                suffixIcon: Material(
                                  color: Colors.transparent,
                                  shape: const CircleBorder(),
                                  clipBehavior: Clip.hardEdge,
                                  child: IconButton(
                                    icon: Icon(
                                      s.isPasswordHidden
                                          ? AppIcons.eyelash_open
                                          : AppIcons.eyelash_closed,
                                      color: Helpers.computeLuminance(
                                        Theme.of(context)
                                            .scaffoldBackgroundColor,
                                      ),
                                    ),
                                    onPressed: c
                                        .read<AuthCubit>()
                                        .togglePasswordVisibility,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //
                          Flexible(
                            child: VerticalSpace(height: App.shortest * 0.02),
                          ),
                          //
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: App.shortest * 0.4,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(100.0),
                                ),
                                child: LinearProgressIndicator(
                                  value: s.passwordStrength,
                                  semanticsLabel: s.passwordStrength.toString(),
                                  color: s.strength(
                                    low: Palette.errorRed,
                                    medium: Palette.yellow,
                                    perfect: Palette.successGreen,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //
                          Flexible(
                            child: VerticalSpace(height: App.shortest * 0.03),
                          ),
                          //
                          const TextFormInputLabel(
                            text: 'Retype Password',
                            letterSpacing: Helpers.labelLetterSpacing,
                          ),
                          //
                          Flexible(
                            child: AdaptiveTextFormInput(
                              enableSuggestions: false,
                              autoCorrect: false,
                              disabled: s.isLoading,
                              obscureText: s.isPasswordHidden,
                              focus: AuthState.confirmPasswordFocus,
                              validate: s.validate,
                              autoFillHints: [
                                AutofillHints.password,
                              ],
                              errorText: s.passwordConfirmation.value.fold(
                                (f) => f.message,
                                (_) => null,
                              ),
                              onChanged: c
                                  .read<AuthCubit>()
                                  .passwordConfirmationChanged,
                              decoration: InputDecoration(
                                hintText: '*********',
                                suffixIcon: Visibility(
                                  visible: s.passwordConfirmation.isValid,
                                  child: Icon(
                                    s.passwordMatches
                                        ? Icons.check_circle
                                        : Icons.cancel_rounded,
                                    color: s.passwordMatches
                                        ? Palette.successGreen
                                        : Palette.errorRed,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //
                          Flexible(
                            child: VerticalSpace(height: App.shortest * 0.15),
                          ),
                          //
                          Flexible(
                            child: Visibility(
                              visible: !s.isLoading,
                              replacement: App.loadingHourGlass,
                              child: AppButton(
                                onPressed: c.read<AuthCubit>().createAccount,
                                text: 'Create Account',
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
                                  dark: () => const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                height: 30.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            //
            Flexible(child: VerticalSpace(height: App.shortest * 0.1)),
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText.rich(
                TextSpan(children: [
                  const TextSpan(text: 'Already have an account? '),
                  TextSpan(
                    text: 'Log In',
                    recognizer: tapRecognizer,
                    style: TextStyle(
                      color: Helpers.foldTheme(
                        context: context,
                        light: () => Palette.accentColor,
                        dark: () => Palette.accentColor.shade100,
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
            //
            Flexible(child: VerticalSpace(height: App.shortest * 0.03)),
          ],
        ),
      ),
    );
  }
}
