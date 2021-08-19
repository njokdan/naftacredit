// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryDTO _$_$_CountryDTOFromJson(Map<String, dynamic> json) {
  return _$_CountryDTO(
    id: json['id'] as String?,
    name: json['name'] as String? ?? '',
    phoneCode: json['country_phone_code'] as String? ?? '',
    isSupported: json['is_supported'] as bool? ?? false,
    currencyType: json['currency'] as String? ?? '',
    currencyName: json['currency_name'] as String? ?? '',
    createdAt:
        const TimestampConverter().fromJson(json['created_at'] as String?),
    updatedAt:
        const TimestampConverter().fromJson(json['updated_at'] as String?),
    deletedAt:
        const TimestampConverter().fromJson(json['deleted_at'] as String?),
  );
}

Map<String, dynamic> _$_$_CountryDTOToJson(_$_CountryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('country_phone_code', instance.phoneCode);
  val['is_supported'] = instance.isSupported;
  writeNotNull('currency', instance.currencyType);
  writeNotNull('currency_name', instance.currencyName);
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
