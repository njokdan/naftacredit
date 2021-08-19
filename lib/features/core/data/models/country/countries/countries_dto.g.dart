// GENERATED CODE - DO NOT MODIFY BY HAND

part of countries_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountriesDTO _$_$_CountriesDTOFromJson(Map<String, dynamic> json) {
  return _$_CountriesDTO(
    (json['data'] as List<dynamic>?)
            ?.map((e) => CountriesList.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    const TimestampConverter().fromJson(json['created_at'] as String?),
    const TimestampConverter().fromJson(json['updated_at'] as String?),
    const TimestampConverter().fromJson(json['deleted_at'] as String?),
  );
}

Map<String, dynamic> _$_$_CountriesDTOToJson(_$_CountriesDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e.toJson()).toList());
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
