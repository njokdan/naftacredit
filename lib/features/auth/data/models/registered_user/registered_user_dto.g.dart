// GENERATED CODE - DO NOT MODIFY BY HAND

part of registered_user_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisteredUserDTO _$_$_RegisteredUserDTOFromJson(Map<String, dynamic> json) {
  return _$_RegisteredUserDTO(
    status: json['status'] as String?,
    data: json['data'] == null
        ? null
        : UserDTO.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_RegisteredUserDTOToJson(
    _$_RegisteredUserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('data', instance.data?.toJson());
  return val;
}
