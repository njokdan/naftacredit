import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

/// A stateless widget to render BankBvnVerificationScreen.
class BankBvnVerificationScreen extends StatelessWidget with AutoRouteWrapper {
  const BankBvnVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Helpers.appPadding),
            child: Center(
              child: AutoSizeText(
                '3 of 3',
                style: Theme.of(context).textTheme.headline6!.copyWith(),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(
          horizontal: Helpers.appPadding,
        ).copyWith(top: App.longest * 0.015),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: AutoSizeText(
                  'Bank Verification',
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
                child: AutoSizeText(
                  'Please provide your BVN details to help us qualify you for a loan.',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        // color: Colors.grey.shade700,
                        fontSize: 16.0,
                        letterSpacing: Helpers.letterSpacing,
                      ),
                ),
              ),
              //
              Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
              //
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextFormInputLabel(text: 'Enter your BVN'),
                    //
                    const Flexible(
                      child: AdaptiveTextFormInput(
                        hintText: '012345678901',
                        keyboardType: TextInputType.number,
                        capitalization: TextCapitalization.none,
                        action: TextInputAction.done,
                      ),
                    ),
                  ],
                ),
              ),
              //
              Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
              //
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffF8FAFB),
                  borderRadius:
                      BorderRadius.circular(Helpers.inputBorderRadius),
                ),
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: App.shortest * 0.04,
                  horizontal: App.shortest * 0.04,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: AutoSizeText(
                        'Why do we need your BVN?',
                        softWrap: true,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 16.0,
                              color: Helpers.foldTheme(
                                light: () => Palette.accentColor,
                                dark: () => Palette.accentColor.shade200,
                              ),
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                    //
                    Flexible(
                      child: AutoSizeText(
                        'We need your BVN to help us verify the following:',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.black87,
                              height: 2.5,
                              fontSize: 15.0,
                            ),
                      ),
                    ),
                    //
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Flexible(
                              child: _CheckedItem(
                                icon: Icons.check_circle_outline_rounded,
                                text: 'Full Name',
                              ),
                            ),
                            const Flexible(
                              child: _CheckedItem(
                                icon: Icons.check_circle_outline_rounded,
                                text: 'Phone Number',
                              ),
                            ),
                            const Flexible(
                              child: _CheckedItem(
                                icon: Icons.check_circle_outline_rounded,
                                text: 'Date of Birth',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    Flexible(
                      child: AutoSizeText(
                        'Your BVN does not give us access to your account details or transactions.',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.black87,
                              fontSize: 15.0,
                            ),
                      ),
                    ),
                    //
                    Divider(
                      height: App.shortest * 0.1,
                      thickness: 1.5,
                      color: Helpers.foldTheme(
                        light: () => Colors.grey.shade400,
                        dark: () => Colors.grey.shade300,
                      ),
                    ),
                    //
                    Flexible(
                      child: AutoSizeText(
                        'Can’t remember your BVN? Dail *565*0# from your registered mobile number.',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.black87,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              Flexible(child: VerticalSpace(height: App.shortest * 0.2)),

              //
              Flexible(
                child: AppButton(
                  onPressed: () => navigator.popAndPush(
                    BankOtpVerificationRoute(),
                    // predicate: (_) => false,
                  ),
                  text: 'Verify BVN',
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
            ],
          ),
        ),
      ),
    );
  }
}

class _CheckedItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _CheckedItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Icon(
              icon,
              size: 20.0,
              color: Colors.grey,
            ),
          ),
          //
          Flexible(
            child: HorizontalSpace(
              width: App.shortest * 0.02,
            ),
          ),
          //
          Flexible(
            child: AutoSizeText(
              text,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Colors.black87,
                    fontSize: 16.0,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
