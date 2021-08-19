import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';

part 'info_response.freezed.dart';

@freezed
@immutable
class InfoResponse with _$InfoResponse, Response implements Info {
  const InfoResponse._();

  const factory InfoResponse({
    required String? uuid,
    String? status,
    String? details,
    required String message,
    @Default(true) bool show,
  }) = _InfoResponse;

  factory InfoResponse.processing() => InfoResponse(
        uuid: UniqueId<String>.v4().value,
        message: 'Processing information..please wait!',
      );
}
