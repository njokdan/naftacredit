// GENERATED CODE - DO NOT MODIFY BY HAND

part of dynamic_response_data.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponse _$_$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _$ErrorResponse(
    code: json['code'] as int?,
    status: json['status'] as String?,
    message: json['message'] as String,
    error: json['error'] as String?,
    errors: json['errors'] == null
        ? null
        : ServerFieldErrors.fromJson(json['errors'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$ErrorResponseToJson(_$ErrorResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('status', instance.status);
  val['message'] = instance.message;
  writeNotNull('error', instance.error);
  writeNotNull('errors', instance.errors?.toJson());
  return val;
}

_$PassingResponse _$_$PassingResponseFromJson(Map<String, dynamic> json) {
  return _$PassingResponse(
    status: json['status'] as String?,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$PassingResponseToJson(_$PassingResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  val['message'] = instance.message;
  return val;
}
