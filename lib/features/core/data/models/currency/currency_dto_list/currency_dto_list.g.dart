// GENERATED CODE - DO NOT MODIFY BY HAND

part of currency_dto_list.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyListDTO _$_$_CurrencyListDTOFromJson(Map<String, dynamic> json) {
  return _$_CurrencyListDTO(
    currencies: (json['currencies'] as List<dynamic>)
        .map((e) => CurrencyDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CurrencyListDTOToJson(_$_CurrencyListDTO instance) =>
    <String, dynamic>{
      'currencies': instance.currencies.map((e) => e.toJson()).toList(),
    };
