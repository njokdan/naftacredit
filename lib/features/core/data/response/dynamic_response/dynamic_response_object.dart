library dynamic_response_object.dart;

import 'package:dio/dio.dart' as _d;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/data/http_client/index.dart';
import 'package:naftacredit/features/core/data/response/index.dart';
import 'package:naftacredit/features/core/domain/response/response.dart';
import 'package:naftacredit/manager/serializer/serializers.dart';

part 'dynamic_response_object.gen.dart';
part 'dynamic_response_object.freezed.dart';

@freezed
@immutable
class DynamicResponseObject
    extends AppNetworkResponseException<_d.DioError, dynamic>
    with _$DynamicResponseObject
    implements Failure, Response {
  const factory DynamicResponseObject(
    @DynamicResponseSerializer() DynamicResponse response,
  ) = _DynamicResponseObject;

  const DynamicResponseObject._();

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DynamicResponseObject.fromJson(Map<String, dynamic> json) =>
      _$DynamicResponseObjectFromJson(json);

  @override
  int? get code => response.map(error: (e) => e.code, success: (_) => null);

  @override
  String? get details =>
      response.map(error: (e) => null, success: (s) => s.details);

  @override
  String? get error =>
      response.map(error: (e) => e.error, success: (_) => null);

  @override
  ServerFieldErrors? get errors =>
      response.map(error: (e) => e.errors, success: (_) => null);

  @override
  String get message => response.message;

  @override
  bool get show => response.map(error: (e) => true, success: (s) => s.show);

  @override
  String? get status => response.status;

  @override
  String? get uuid => response.map(error: (e) => null, success: (s) => s.uuid);

  static DynamicResponseObject? fromDioResponse<T>(_d.Response<T>? response) {
    final data = response?.data;
    if (data != null && data is Map<String, dynamic>)
      return DynamicResponseObject.fromJson(data);
    return null;
  }
}
