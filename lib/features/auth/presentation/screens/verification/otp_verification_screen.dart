import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naftacredit/features/auth/presentation/managers/managers.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

enum OTPVerificationScreenType { email, bvn }

class OTPVerificationScreen extends StatelessWidget with AutoRouteWrapper {
  static final TapGestureRecognizer _logout = TapGestureRecognizer()
    ..onTap = (() => App.context.read<AuthWatcherCubit>().signOut);

  final int? bvn;
  final String? title;
  final Route<dynamic>? intended;
  final OTPVerificationScreenType? type;

  const OTPVerificationScreen({
    Key? key,
    this.bvn,
    this.title,
    this.intended,
    this.type = OTPVerificationScreenType.email,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<AccountVerificationCubit>()..init(bvn: BasicTextField(bvn)),
      child: BlocListener<AccountVerificationCubit, AccountVerificationState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.isLeft() &&
                    c.status.getOrElse(() => null)!.fold(
                          (f) => f.foldCode(orElse: () => false),
                          (_) => false,
                        ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (e1) => e1?.fold(
            (f) => PopupDialog.error(message: f.message).render(c),
            (r) => r?.fold(
              success: (p0) => PopupDialog.success(
                message: p0.message,
                listener: (_) => _?.fold(
                  dismissed: () {
                    type?.fold(
                      email: () {
                        log.wtf('Its an email something');
                        return p0.pop
                            ? navigator.push(const VerifyPromptRoute())
                            : null;
                      },
                      bvn: () {
                        log.wtf('definitely a BVN thing');
                        return p0.pop
                            ? navigator.push(VerifyPersonalInformationRoute())
                            : null;
                      },
                    );
                  },
                ),
              ).render(c),
            ),
          ),
        ),
        child: this,
      ),
    );
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
              physics: Helpers.physics,
              padding: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
              ).copyWith(top: App.longest * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: AutoSizeText(
                      title ?? 'Email Verification',
                      softWrap: true,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Helpers.foldTheme(
                              light: () => Palette.accentColor,
                              dark: () => Palette.accentColor.shade50,
                            ),
                            fontSize: 27.0,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                  //
                  Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                  //
                  Flexible(
                    child: BlocBuilder<AccountVerificationCubit,
                        AccountVerificationState>(
                      builder: (c, s) => AutoSizeText.rich(
                        TextSpan(
                          children: type?.fold(
                            email: [
                              const TextSpan(
                                text: 'We sent an OTP to '
                                    'the email address you provided - ',
                              ),
                              TextSpan(
                                text: '${s.user?.email.getOrNull ?? ''}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Helpers.foldTheme(
                                    light: () => Palette.accentColor.shade600,
                                    dark: () => Palette.accentColor.shade50,
                                  ),
                                ),
                              ),
                              const TextSpan(
                                text: '. Please enter the code below.',
                              ),
                            ],
                            bvn: [
                              const TextSpan(
                                text: 'We sent an OTP Code to the '
                                    'phone number linked to this BVN - ',
                              ),
                              TextSpan(
                                text: s.bvn.getOrNull.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Helpers.foldTheme(
                                    light: () => Palette.accentColor.shade600,
                                    dark: () => Palette.accentColor.shade50,
                                  ),
                                ),
                              ),
                              const TextSpan(
                                text: '. Please enter the code below. ',
                              ),
                            ],
                          ),
                        ),
                        softWrap: true,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              // color: Colors.grey.shade700,
                              fontSize: 16.0,
                              letterSpacing: Helpers.letterSpacing,
                            ),
                      ),
                    ),
                  ),
                  //
                  Flexible(child: VerticalSpace(height: App.shortest * 0.1)),
                  //
                  PinInputWidget<AccountVerificationCubit,
                      AccountVerificationState>(
                    length: 6,
                    validate: (s) => s.validate,
                    disabled: (s) => s.isLoading,
                    cursorColor: Helpers.foldTheme(
                      light: () => null,
                      dark: () => Colors.white,
                    ),
                    keyboardType: TextInputType.text,
                    onChanged:
                        context.read<AccountVerificationCubit>().otpCodeChanged,
                    onCompleted: (_) => type?.fold(
                      email:
                          context.read<AccountVerificationCubit>().verifyEmail,
                      bvn: context.read<AccountVerificationCubit>().verifyBVN,
                    )(),
                    validator: (s) => s.code.value.fold(
                      (f) => f.message,
                      (_) => s.status.fold(
                        () => null,
                        (a) => a?.fold(
                          (f) =>
                              f.errors?.token?.firstOrNone ??
                              f.errors?.bvn?.firstOrNone,
                          (_) => null,
                        ),
                      ),
                    ),
                  ),
                  //
                  Flexible(child: VerticalSpace(height: App.shortest * 0.1)),
                  //
                  Align(
                    alignment: Alignment.center,
                    child: CountdownWidget(
                      duration: env.flavor.fold(
                        dev: () => const Duration(minutes: 1),
                        prod: () => const Duration(minutes: 2, seconds: 3),
                      ),
                      onPressed: type?.fold(
                        email: context
                            .read<AccountVerificationCubit>()
                            .resendVerificationEmail,
                        bvn: context
                            .read<AccountVerificationCubit>()
                            .resendBVNEmailOTP,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AutoSizeText.rich(
                          TextSpan(children: [
                            const TextSpan(text: 'Didn’t get the code? '),
                            //
                            TextSpan(
                              text: 'Resend.',
                              style: TextStyle(
                                color: Helpers.foldTheme(
                                  context: context,
                                  light: () => Palette.accentColor,
                                  dark: () => Palette.accentColor.shade50,
                                ),
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ]),
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //
          BlocBuilder<AccountVerificationCubit, AccountVerificationState>(
            buildWhen: (p, c) => p.isLoading != c.isLoading,
            builder: (c, s) => Positioned(
              left: 0,
              right: 0,
              bottom: App.shortest * 0.2,
              child: Visibility(
                visible: !s.isLoading,
                replacement: App.loadingHourGlass,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
                  child: AppButton(
                    onPressed: type?.fold(
                      email:
                          context.read<AccountVerificationCubit>().verifyEmail,
                      bvn: context.read<AccountVerificationCubit>().verifyBVN,
                    ),
                    text: type?.fold(
                      email: 'Verify Email',
                      bvn: 'Complete BVN Verification',
                    ),
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
                ),
              ),
            ),
          ),
          //
          Positioned(
            left: 0,
            right: 0,
            bottom: App.shortest * 0.08,
            child:
                BlocBuilder<AccountVerificationCubit, AccountVerificationState>(
              buildWhen: (p, c) =>
                  p.user?.email != c.user?.email || p.bvn != c.bvn,
              builder: (c, s) => Align(
                alignment: Alignment.center,
                child: AutoSizeText.rich(
                  TextSpan(children: [
                    const TextSpan(text: 'Not '),
                    type!.fold(
                      email:
                          TextSpan(text: '${s.user?.email.getOrNull ?? ''}? '),
                      bvn: TextSpan(text: '${s.bvn.getOrNull ?? ''}? '),
                    ),
                    type!.fold(
                      email: TextSpan(
                        text: 'Logout.',
                        recognizer: _logout,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                          color: Helpers.foldTheme(
                            context: c,
                            light: () => Palette.accentColor,
                            dark: () => Palette.accentColor.shade50,
                          ),
                        ),
                      ),
                      bvn: TextSpan(
                        text: 'Go Back.',
                        recognizer: TapGestureRecognizer()
                          ..onTap = navigator.pop,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                          color: Helpers.foldTheme(
                            context: c,
                            light: () => Palette.accentColor,
                            dark: () => Palette.accentColor.shade50,
                          ),
                        ),
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

extension on OTPVerificationScreenType {
  U fold<U>({
    required U email,
    U? bvn,
  }) {
    switch (this) {
      case OTPVerificationScreenType.bvn:
        return bvn ?? email;
      case OTPVerificationScreenType.email:
      default:
        return email;
    }
  }
}
