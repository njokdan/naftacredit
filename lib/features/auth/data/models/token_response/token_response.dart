library token_response.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/auth/domain/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';

part 'token_response.g.dart';
part 'token_response.freezed.dart';

@freezed
@immutable
class TokenResponse with _$TokenResponse {
  const TokenResponse._();

  const factory TokenResponse({
    @JsonKey(includeIfNull: false, name: 'access_token') String? accessToken,
    @JsonKey(includeIfNull: false, name: 'token_type') String? tokenType,
    @JsonKey(includeIfNull: false, name: 'expires_in') int? expiryDate,
  }) = _TokenResponse;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);

  /// Maps the Data Transfer Object to a AccessToken Object.
  AccessToken get domain => AccessToken(
        accessToken: BasicTextField(accessToken),
        tokenType: TokenType.parse(tokenType),
        expiryDate: BasicTextField(expiryDate),
      );
}
