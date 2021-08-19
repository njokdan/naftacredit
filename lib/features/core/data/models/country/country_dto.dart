library country_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/manager/serializer/serializers.dart';

part 'country_dto.g.dart';
part 'country_dto.freezed.dart';

@freezed
@immutable
class CountryDTO with _$CountryDTO {
  const CountryDTO._();

  const factory CountryDTO({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeIfNull: false, defaultValue: '') String? name,
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
        String? phoneCode,
    @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
    @IntToBoolSerializer()
    @Default(false)
        bool isSupported,
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
        String? currencyType,
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
        String? currencyName,
    @JsonKey(includeIfNull: false, name: 'created_at')
    @TimestampConverter()
        DateTime? createdAt,
    @JsonKey(includeIfNull: false, name: 'updated_at')
    @TimestampConverter()
        DateTime? updatedAt,
    @JsonKey(includeIfNull: false, name: 'deleted_at')
    @TimestampConverter()
        DateTime? deletedAt,
  }) = _CountryDTO;

  factory CountryDTO.fromJson(Map<String, dynamic> json) =>
      _$CountryDTOFromJson(json);

  factory CountryDTO.fromDomain(Country instance) => CountryDTO(
        id: instance.id?.value,
        name: instance.name?.name,
        phoneCode: instance.dialCode,
        isSupported: instance.isSupported,
        currencyType: instance.currency?.type?.name,
        currencyName: instance.currency?.name,
      );

  Country get domain => Country(
        id: UniqueId<String>.fromExternal(id),
        name: CountryName.valueOf(name ?? ''),
        dialCode: phoneCode,
        isSupported: isSupported,
        currency: Currency(
          name: currencyName,
          type: CurrencyType.valueOf(currencyType ?? ''),
        ),
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
