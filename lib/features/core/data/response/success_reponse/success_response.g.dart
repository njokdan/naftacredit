// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SuccessResponse _$_$_SuccessResponseFromJson(Map<String, dynamic> json) {
  return _$_SuccessResponse(
    status: json['status'] as String? ?? 'success',
    message: json['message'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_SuccessResponseToJson(_$_SuccessResponse instance) {
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
