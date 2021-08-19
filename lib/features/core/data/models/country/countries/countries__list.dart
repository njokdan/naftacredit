library countries__list.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:naftacredit/features/core/data/models/country/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/manager/serializer/serializers.dart';

part 'countries__list.g.dart';
part 'countries__list.freezed.dart';

@freezed
@immutable
class CountriesList with _$CountriesList {
  const CountriesList._();

  const factory CountriesList({
    // The country's Id
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false, name: 'country_phone_code')
        String? countryPhoneCode,
    @JsonKey(includeIfNull: false, name: 'is_supported', defaultValue: true)
    @IntToBoolSerializer()
    @Default(false)
        bool isSupported,
    @JsonKey(includeIfNull: false) String? currency,
    @JsonKey(includeIfNull: false, name: 'currency_name') String? currencyName,
    @JsonKey(includeIfNull: false) @Default([]) List<StateDTO>? states,
    @JsonKey(includeIfNull: false, name: 'created_at')
    @TimestampConverter()
        DateTime? createdAt,
    @JsonKey(includeIfNull: false, name: 'updated_at')
    @TimestampConverter()
        DateTime? updatedAt,
    @JsonKey(includeIfNull: false, name: 'deleted_at')
    @TimestampConverter()
        DateTime? deletedAt,
  }) = _CountriesList;

  factory CountriesList.fromJson(Map<String, dynamic> json) =>
      _$CountriesListFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Country> Object.
  Country get domain => Country(
        id: UniqueId.fromExternal(id),
        name: CountryName.valueOf(name),
        dialCode: countryPhoneCode,
        isSupported: isSupported,
        currency: Currency(
          name: currency,
          type:
              currencyName != null ? CurrencyType.valueOf(currencyName!) : null,
        ),
        states: states!.map((e) => e.domain).toImmutableList(),
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
