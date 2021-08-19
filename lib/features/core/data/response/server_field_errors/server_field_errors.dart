library server_field_errors.dart;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_field_errors.g.dart';
part 'server_field_errors.freezed.dart';

@freezed
@immutable
class ServerFieldErrors with _$ServerFieldErrors {
  const ServerFieldErrors._();

  const factory ServerFieldErrors({
    @JsonKey(includeIfNull: false) List<String?>? name,
    @JsonKey(includeIfNull: false) List<String?>? firstName,
    @JsonKey(includeIfNull: false) List<String?>? lastName,
    @JsonKey(includeIfNull: false) List<String?>? token,
    @JsonKey(includeIfNull: false) List<String?>? email,
    @JsonKey(includeIfNull: false) List<String?>? gender,
    @JsonKey(includeIfNull: false) List<String?>? age,
    @JsonKey(includeIfNull: false) List<String?>? phone,
    @JsonKey(includeIfNull: false) List<String?>? password,
    @JsonKey(includeIfNull: false) List<String?>? code,
    @JsonKey(includeIfNull: false) List<String?>? type,
    @JsonKey(includeIfNull: false) List<String?>? description,
    @JsonKey(includeIfNull: false) List<String?>? street,
    @JsonKey(includeIfNull: false) List<String?>? town,
    @JsonKey(includeIfNull: false) List<String?>? stateId,
    @JsonKey(includeIfNull: false) List<String?>? state,
    @JsonKey(includeIfNull: false) List<String?>? document,
    @JsonKey(includeIfNull: false) List<String?>? duration,
    @JsonKey(includeIfNull: false) List<String?>? amount,
    @JsonKey(includeIfNull: false) List<String?>? currencyId,
    @JsonKey(includeIfNull: false) List<String?>? country,
    @JsonKey(includeIfNull: false) List<String?>? comment,
    @JsonKey(includeIfNull: false) List<String?>? cardNumber,
    @JsonKey(includeIfNull: false) List<String?>? accountNumber,
    @JsonKey(includeIfNull: false) List<String?>? bankId,
    @JsonKey(includeIfNull: false) List<String?>? bvn,
  }) = _ServerFieldErrors;

  factory ServerFieldErrors.fromJson(Map<String, dynamic> json) =>
      _$ServerFieldErrorsFromJson(json);
}
