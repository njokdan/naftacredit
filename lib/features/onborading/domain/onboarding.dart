library onboarding.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:naftacredit/utils/utils.dart';

part 'onboarding.freezed.dart';

@freezed
@immutable
class OnboardingItem<Pixel> with _$OnboardingItem<Pixel> {
  const factory OnboardingItem({
    required String title,
    required String description,
    required Pixel image,
  }) = _OnboardingItem;

  static KtList<OnboardingItem<String>> get list => KtList.from([
        const OnboardingItem(
          title: 'Easy Loan Access',
          description: 'Nafta Credit allows you check your '
              'loan eligibility while offering '
              'quick access to loan disbursement.',
          image: AppAssets.onboarding0,
        ),
        //
        const OnboardingItem(
          title: 'Pay Your Bills',
          description: 'Nafta Credit has you covered with easy '
              'bills payment like Cable, Data, '
              'Credit & Electricity payments.',
          image: AppAssets.onboarding1,
        ),
        //
        const OnboardingItem(
          title: 'Keep Track of Loan History',
          description: 'Offering detailed loan breakdowns and history, '
              'you can monitor your payment schedule and track your payables.',
          image: AppAssets.onboarding2,
        ),
      ]);
}
