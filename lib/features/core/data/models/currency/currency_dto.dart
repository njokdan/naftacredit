library currency.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/manager/serializer/serializers.dart';

part 'currency_dto.g.dart';
part 'currency_dto.freezed.dart';

@freezed
@immutable
class CurrencyDTO with _$CurrencyDTO {
  const CurrencyDTO._();

  const factory CurrencyDTO({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'name')
        String? countryName,
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
        String? countryPhoneCode,
    @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
    @IntToBoolSerializer()
    @Default(false)
        bool isSupported,
    @JsonKey(includeIfNull: false, defaultValue: '') String? currency,
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
        String? currencyName,
  }) = _CurrencyDTO;

  factory CurrencyDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDTOFromJson(json);

  factory CurrencyDTO.fromDomain(Currency? instance) => CurrencyDTO(
        id: instance?.id?.value,
        currencyName: instance?.name,
        currency: instance?.type?.name,
      );

  Currency get domain => Currency(
        id: UniqueId<String>.fromExternal(id),
        name: currencyName,
        type: CurrencyType.valueOf(currency ?? ''),
      );
}
