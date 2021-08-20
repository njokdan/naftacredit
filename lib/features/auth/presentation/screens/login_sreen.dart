import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naftacredit/features/auth/presentation/managers/managers.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/utils/palette.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

class LoginScreen extends StatelessWidget with AutoRouteWrapper {
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final TapGestureRecognizer tapRecognizer = TapGestureRecognizer()
    ..onTap = (() => navigator.replace(const SignupRoute()));

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
                      'Welcome Back',
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
                      'We’re so happy to see you. You can enter your details '
                      'to access and manage your loans.',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            // color: Colors.grey.shade700,
                            fontSize: 16.0,
                            letterSpacing: Helpers.labelLetterSpacing,
                          ),
                    ),
                  ),
                  //
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (c, s) => Form(
                      autovalidateMode: s.validate
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: VerticalSpace(height: App.shortest * 0.04),
                          ),
                          //
                          const TextFormInputLabel(
                            text: 'Email Address',
                            letterSpacing: Helpers.labelLetterSpacing,
                          ),
                          //
                          AdaptiveTextFormInput(
                            hintText: 'johndoe@email.com',
                            disabled: s.isLoading,
                            validate: s.validate,
                            keyboardType: TextInputType.emailAddress,
                            autoFillHints: [AutofillHints.email],
                            focus: AuthState.emailFocus,
                            next: AuthState.passwordFocus,
                            errorText: s.user.email.value.fold(
                              (f) => f.message,
                              (_) => null,
                            ),
                            onChanged: c.read<AuthCubit>().emailChanged,
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
                          AdaptiveTextFormInput(
                            enableSuggestions: false,
                            autoCorrect: false,
                            disabled: s.isLoading,
                            validate: s.validate,
                            obscureText: s.isPasswordHidden,
                            focus: AuthState.passwordFocus,
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
                                      Theme.of(context).scaffoldBackgroundColor,
                                    ),
                                  ),
                                  onPressed: c
                                      .read<AuthCubit>()
                                      .togglePasswordVisibility,
                                ),
                              ),
                            ),
                          ),
                        ],
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
                        light: () => Palette.accentColor,
                        dark: () => Colors.white60,
                      ),
                      textAlign: TextAlign.end,
                      letterSpacing: Helpers.labelLetterSpacing,
                    ),
                  ),
                  //
                  Flexible(child: VerticalSpace(height: App.shortest * 0.15)),
                  //
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (c, s) => Visibility(
                      visible: !s.isLoading,
                      replacement: App.loadingHourGlass,
                      child: AppButton(
                        onPressed: context.read<AuthCubit>().login,
                        text: 'Login',
                        textColor: Colors.white,
                        textStyle: const TextStyle(
                          letterSpacing: Helpers.labelLetterSpacing,
                        ),
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
                    ),
                  ),
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
                  const TextSpan(text: 'Don\'t have an account? '),
                  TextSpan(
                    text: 'Sign Up',
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
                      letterSpacing: Helpers.labelLetterSpacing,
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
