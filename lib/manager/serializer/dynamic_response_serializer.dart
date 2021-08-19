library dynamic_response_serializer.dart;

import 'package:json_annotation/json_annotation.dart';
import 'package:naftacredit/features/core/data/index.dart';

class DynamicResponseSerializer
    implements JsonConverter<DynamicResponse, Map<String, dynamic>> {
  const DynamicResponseSerializer();

  @override
  DynamicResponse fromJson(Map<String, dynamic> json) {
    if (!json.containsKey('status') ||
        (json.containsKey('status') && json['status'] is num)) {
      return ErrorResponse.fromJson(json);
    } else
      switch (json['status'] as String) {
        case 'success':
          return PassingResponse.fromJson(json);
        case 'error':
        default:
          return ErrorResponse.fromJson(json);
      }
  }

  @override
  Map<String, dynamic> toJson(DynamicResponse instance) => instance.toJson();
}
