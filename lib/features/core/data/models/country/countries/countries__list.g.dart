// GENERATED CODE - DO NOT MODIFY BY HAND

part of countries__list.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountriesList _$_$_CountriesListFromJson(Map<String, dynamic> json) {
  return _$_CountriesList(
    id: json['id'] as String?,
    name: json['name'] as String?,
    countryPhoneCode: json['country_phone_code'] as String?,
    isSupported: json['is_supported'] as bool? ?? true,
    currency: json['currency'] as String?,
    currencyName: json['currency_name'] as String?,
    states: (json['states'] as List<dynamic>?)
        ?.map((e) => StateDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt:
        const TimestampConverter().fromJson(json['created_at'] as String?),
    updatedAt:
        const TimestampConverter().fromJson(json['updated_at'] as String?),
    deletedAt:
        const TimestampConverter().fromJson(json['deleted_at'] as String?),
  );
}

Map<String, dynamic> _$_$_CountriesListToJson(_$_CountriesList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('country_phone_code', instance.countryPhoneCode);
  val['is_supported'] = instance.isSupported;
  writeNotNull('currency', instance.currency);
  writeNotNull('currency_name', instance.currencyName);
  writeNotNull('states', instance.states?.map((e) => e.toJson()).toList());
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
