library account_verification_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_verification_dto.g.dart';
part 'account_verification_dto.freezed.dart';

@freezed
@immutable
class AccountVerificationDTO with _$AccountVerificationDTO {
  const AccountVerificationDTO._();

  const factory AccountVerificationDTO({
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? bvn,
    @JsonKey(includeIfNull: false) String? token,
    @JsonKey(includeIfNull: false) String? street,
    @JsonKey(includeIfNull: false, name: 'state') String? stateId,
    @JsonKey(includeIfNull: false, name: 'country') String? countryId,
  }) = _AccountVerificationDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory AccountVerificationDTO.fromJson(Map<String, dynamic> json) =>
      _$AccountVerificationDTOFromJson(json);
}
