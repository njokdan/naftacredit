library dynamic_response_data.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/data/response/index.dart';
import 'package:naftacredit/features/core/domain/response/response.dart';

part 'dynamic_response_data.g.dart';
part 'dynamic_response_data.freezed.dart';

@Freezed(
  unionKey: 'status',
  unionValueCase: FreezedUnionCase.snake,
  fallbackUnion: 'error',
)
@immutable
class DynamicResponse with _$DynamicResponse {
  const DynamicResponse._();

  // AppNetworkResponseException<_d.DioError, dynamic>
  @Implements.fromString('Failure')
  const factory DynamicResponse.error({
    int? code,
    String? status,
    required String message,
    @JsonKey(ignore: true) String? details,
    String? error,
    ServerFieldErrors? errors,
    @JsonKey(ignore: true) @Default(false) bool pop,
    @JsonKey(ignore: true) Exception? exception,
  }) = ErrorResponse;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory DynamicResponse.fromJson(Map<String, dynamic> json) =>
      _$DynamicResponseFromJson(json);

  @With.fromString('Response, Success')
  const factory DynamicResponse.success({
    @JsonKey(ignore: true) String? uuid,
    String? status,
    required String message,
    @JsonKey(ignore: true) String? details,
    @JsonKey(ignore: true) @Default(false) bool pop,
    @JsonKey(ignore: true) @Default(true) bool show,
  }) = PassingResponse;
}
