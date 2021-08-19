import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naftacredit/features/auth/presentation/managers/managers.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/presentation/widgets/dropdown_field_widget.dart';
import 'package:naftacredit/manager/locator/locator.dart';
import 'package:naftacredit/utils/utils.dart';
import 'package:naftacredit/widgets/widgets.dart';

/// A stateless widget to render VerifyPersonalInformationScreeny.
class VerifyPersonalInformationScreen extends StatelessWidget
    with AutoRouteWrapper {
  VerifyPersonalInformationScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AccountVerificationCubit>()..countries(),
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
          (eth) => eth?.fold(
            (f) => PopupDialog.error(message: f.message).render(c),
            (r) => PopupDialog.success(
              message: r?.message,
              listener: (_) => _?.fold(
                dismissed: () => r?.fold(
                  success: (p0) => p0.pop
                      ? navigator.pushAndPopUntil(
                          const UploadIdentificationRoute(),
                          predicate: (_) => false,
                        )
                      : null,
                ),
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
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
                '2 of 3',
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
                  'Personal Information',
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
              BlocBuilder<AccountVerificationCubit, AccountVerificationState>(
                builder: (c, s) => Form(
                  autovalidateMode: s.validate
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextFormInputLabel(text: 'Street Address'),
                            //
                            Flexible(
                              child: AdaptiveTextFormInput(
                                maxLines: 5,
                                disabled: s.isLoading,
                                validate: s.validate,
                                hintText: '3, Olokun Close, Ojo Town',
                                keyboardType: TextInputType.multiline,
                                capitalization: TextCapitalization.words,
                                action: TextInputAction.newline,
                                focus: AccountVerificationState.addressFocus,
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
                                errorText: s.street.value.fold(
                                  (f) => f.message,
                                  (_) => s.status.fold(
                                    () => null,
                                    (a) => a?.fold(
                                      (f) => f.errors?.street?.firstOrNone,
                                      (_) => null,
                                    ),
                                  ),
                                ),
                                onChanged: c
                                    .read<AccountVerificationCubit>()
                                    .streetChanged,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Flexible(
                          child: VerticalSpace(height: App.shortest * 0.04)),
                      //
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextFormInputLabel(text: 'State / City'),
                            //
                            Flexible(
                              child: DropdownFieldWidget<ProvinceState?>(
                                hint: '-- Select State --',
                                items: s.states
                                    .asList()
                                    .map<DropdownMenuItem<ProvinceState?>>(
                                      (item) =>
                                          DropdownMenuItem<ProvinceState?>(
                                        value: item,
                                        child: AutoSizeText(
                                          '${item.name?.getOrEmpty}',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                        ),
                                      ),
                                    )
                                    .toList(),
                                disabled: s.isLoading,
                                disabledHint: '-- Not available --',
                                validate: s.validate,
                                selected: s.selectedState,
                                error: s.status.fold(
                                  () => null,
                                  (a) => a?.fold(
                                    (f) => f.errors?.state?.firstOrNone,
                                    (_) => null,
                                  ),
                                ),
                                onChanged: c
                                    .read<AccountVerificationCubit>()
                                    .provinceStateChanged,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Flexible(
                          child: VerticalSpace(height: App.shortest * 0.04)),
                      //
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextFormInputLabel(text: 'Country'),
                            //
                            Flexible(
                              child: DropdownFieldWidget<Country?>(
                                hint: '-- Select Country --',
                                items: s.countries
                                    .asList()
                                    .map<DropdownMenuItem<Country?>>(
                                      (item) => DropdownMenuItem<Country?>(
                                        value: item,
                                        child: AutoSizeText(
                                          '${item.name?.name}',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                        ),
                                      ),
                                    )
                                    .toList(),
                                disabled: s.isLoading,
                                validate: s.validate,
                                selected: s.selectedCountry,
                                disabledHint: 'Fetching all countries..',
                                error: s.status.fold(
                                  () => null,
                                  (a) => a?.fold(
                                    (f) => f.errors?.country?.firstOrNone,
                                    (_) => null,
                                  ),
                                ),
                                onChanged: c
                                    .read<AccountVerificationCubit>()
                                    .countryChanged,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              Flexible(child: VerticalSpace(height: App.shortest * 0.14)),
              //
              Flexible(
                child: BlocBuilder<AccountVerificationCubit,
                    AccountVerificationState>(
                  buildWhen: (p, c) => p.isLoading != c.isLoading,
                  builder: (c, s) => Visibility(
                    visible: !s.isLoading,
                    replacement: App.loadingHourGlass,
                    child: AppButton(
                      onPressed:
                          c.read<AccountVerificationCubit>().updatePersonalInfo,
                      text: 'Save and Continue',
                      height: 30.0,
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
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
