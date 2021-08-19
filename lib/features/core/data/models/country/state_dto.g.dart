// GENERATED CODE - DO NOT MODIFY BY HAND

part of state_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateDTO _$_$_StateDTOFromJson(Map<String, dynamic> json) {
  return _$_StateDTO(
    id: json['id'] as String?,
    name: json['name'] as String? ?? '',
    isSupported: json['is_supported'] as bool? ?? true,
    countryId: json['country_id'] as String?,
    country: json['country'] == null
        ? null
        : CountryDTO.fromJson(json['country'] as Map<String, dynamic>),
    createdAt:
        const TimestampConverter().fromJson(json['created_at'] as String?),
    updatedAt:
        const TimestampConverter().fromJson(json['updated_at'] as String?),
    deletedAt:
        const TimestampConverter().fromJson(json['deleted_at'] as String?),
  );
}

Map<String, dynamic> _$_$_StateDTOToJson(_$_StateDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  val['is_supported'] = instance.isSupported;
  writeNotNull('country_id', instance.countryId);
  writeNotNull('country', instance.country?.toJson());
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
