import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:naftacredit/features/core/presentation/widgets/dropdown_field_widget.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

/// A stateless widget to render VerifyPersonalInformationScreeny.
class VerifyPersonalInformationScreen extends StatelessWidget
    with AutoRouteWrapper {
  final FocusNode firstNameFocus = FocusNode();
  final FocusNode lastNameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode phoneFocus = FocusNode();
  final FocusNode dobFocus = FocusNode();
  final FocusNode addressFocus = FocusNode();

  VerifyPersonalInformationScreen({Key? key}) : super(key: key);

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
                '1 of 3',
                style: Theme.of(context).textTheme.headline6!.copyWith(),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        controller: ScrollController(),
        physics: BouncingScrollPhysics(),
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
                  'Personal Information',
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
              Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
              //
              Flexible(
                child: AutoSizeText(
                  'We’ll love to know you better.',
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
                              next: dobFocus,
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormInputLabel(text: 'Date of Birth'),
                    //
                    Flexible(
                      child: AdaptiveTextFormInput(
                        hintText: '01-01-1990',
                        keyboardType: TextInputType.datetime,
                        capitalization: TextCapitalization.none,
                        autoFillHints: [
                          AutofillHints.birthday,
                          AutofillHints.birthdayDay,
                          AutofillHints.birthdayMonth,
                          AutofillHints.birthdayYear,
                        ],
                        focus: dobFocus,
                        next: addressFocus,
                      ),
                    ),
                  ],
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
                    TextFormInputLabel(text: 'Street Address'),
                    //
                    Flexible(
                      child: AdaptiveTextFormInput(
                        maxLines: 6,
                        hintText: '3, Olokun Close, Ojo Town',
                        keyboardType: TextInputType.multiline,
                        capitalization: TextCapitalization.words,
                        action: TextInputAction.newline,
                        focus: addressFocus,
                        autoFillHints: [
                          AutofillHints.fullStreetAddress,
                          AutofillHints.postalAddress,
                          AutofillHints.postalAddressExtended,
                          AutofillHints.addressCityAndState,
                          AutofillHints.streetAddressLine1,
                          AutofillHints.streetAddressLine2,
                          AutofillHints.streetAddressLine3,
                          AutofillHints.streetAddressLevel1,
                          AutofillHints.streetAddressLevel2,
                          AutofillHints.streetAddressLevel3,
                          AutofillHints.streetAddressLevel4,
                        ],
                      ),
                    ),
                  ],
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
                    TextFormInputLabel(text: 'City'),
                    //
                    Flexible(
                      child: DropdownFieldWidget<String>(
                        hint: '-- Select City --',
                        items: ['Lagos', 'Owerri', 'Abuja']
                            .map<DropdownMenuItem<String>>(
                              (item) => DropdownMenuItem<String>(
                                value: item,
                                child: AutoSizeText(
                                  '$item',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                              ),
                            )
                            .toList(),
                        selected: 'Lagos',
                        onChanged: (_) {},
                      ),
                    ),
                  ],
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
                    TextFormInputLabel(text: 'Country'),
                    //
                    Flexible(
                      child: DropdownFieldWidget<String>(
                        hint: '-- Select City --',
                        items: [
                          'United African Republic',
                          'Nigeria',
                          'Cameroon',
                          'Ghana',
                          'United Arab Emirates',
                        ]
                            .map<DropdownMenuItem<String>>(
                              (item) => DropdownMenuItem<String>(
                                value: item,
                                child: AutoSizeText(
                                  '$item',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                              ),
                            )
                            .toList(),
                        selected: 'Nigeria',
                        onChanged: (_) {},
                      ),
                    ),
                  ],
                ),
              ),
              //
              Flexible(child: VerticalSpace(height: App.shortest * 0.14)),
              //
              Flexible(
                child: AppButton(
                  onPressed: () => navigator.push(
                    UploadIdentificationRoute(),
                    // predicate: (_) => false,
                  ),
                  text: 'Save and Continue',
                  textColor: Colors.white,
                  backgroundColor: Helpers.foldTheme(
                    light: () => AppColors.accentColor,
                    dark: () => Colors.transparent,
                  ),
                  splashColor: Helpers.foldTheme(
                    light: () => Colors.white30,
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
    );
  }
}
