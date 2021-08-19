// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of token_response.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) {
  return _TokenResponse.fromJson(json);
}

/// @nodoc
class _$TokenResponseTearOff {
  const _$TokenResponseTearOff();

  _TokenResponse call(
      {@JsonKey(includeIfNull: false, name: 'access_token') String? accessToken,
      @JsonKey(includeIfNull: false, name: 'token_type') String? tokenType,
      @JsonKey(includeIfNull: false, name: 'expires_in') int? expiryDate}) {
    return _TokenResponse(
      accessToken: accessToken,
      tokenType: tokenType,
      expiryDate: expiryDate,
    );
  }

  TokenResponse fromJson(Map<String, Object> json) {
    return TokenResponse.fromJson(json);
  }
}

/// @nodoc
const $TokenResponse = _$TokenResponseTearOff();

/// @nodoc
mixin _$TokenResponse {
  @JsonKey(includeIfNull: false, name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'expires_in')
  int? get expiryDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenResponseCopyWith<TokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenResponseCopyWith<$Res> {
  factory $TokenResponseCopyWith(
          TokenResponse value, $Res Function(TokenResponse) then) =
      _$TokenResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false, name: 'access_token') String? accessToken,
      @JsonKey(includeIfNull: false, name: 'token_type') String? tokenType,
      @JsonKey(includeIfNull: false, name: 'expires_in') int? expiryDate});
}

/// @nodoc
class _$TokenResponseCopyWithImpl<$Res>
    implements $TokenResponseCopyWith<$Res> {
  _$TokenResponseCopyWithImpl(this._value, this._then);

  final TokenResponse _value;
  // ignore: unused_field
  final $Res Function(TokenResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiryDate = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: expiryDate == freezed
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TokenResponseCopyWith<$Res>
    implements $TokenResponseCopyWith<$Res> {
  factory _$TokenResponseCopyWith(
          _TokenResponse value, $Res Function(_TokenResponse) then) =
      __$TokenResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false, name: 'access_token') String? accessToken,
      @JsonKey(includeIfNull: false, name: 'token_type') String? tokenType,
      @JsonKey(includeIfNull: false, name: 'expires_in') int? expiryDate});
}

/// @nodoc
class __$TokenResponseCopyWithImpl<$Res>
    extends _$TokenResponseCopyWithImpl<$Res>
    implements _$TokenResponseCopyWith<$Res> {
  __$TokenResponseCopyWithImpl(
      _TokenResponse _value, $Res Function(_TokenResponse) _then)
      : super(_value, (v) => _then(v as _TokenResponse));

  @override
  _TokenResponse get _value => super._value as _TokenResponse;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiryDate = freezed,
  }) {
    return _then(_TokenResponse(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: expiryDate == freezed
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenResponse extends _TokenResponse {
  const _$_TokenResponse(
      {@JsonKey(includeIfNull: false, name: 'access_token') this.accessToken,
      @JsonKey(includeIfNull: false, name: 'token_type') this.tokenType,
      @JsonKey(includeIfNull: false, name: 'expires_in') this.expiryDate})
      : super._();

  factory _$_TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TokenResponseFromJson(json);

  @override
  @JsonKey(includeIfNull: false, name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(includeIfNull: false, name: 'token_type')
  final String? tokenType;
  @override
  @JsonKey(includeIfNull: false, name: 'expires_in')
  final int? expiryDate;

  @override
  String toString() {
    return 'TokenResponse(accessToken: $accessToken, tokenType: $tokenType, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenResponse &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.expiryDate, expiryDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiryDate, expiryDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(expiryDate);

  @JsonKey(ignore: true)
  @override
  _$TokenResponseCopyWith<_TokenResponse> get copyWith =>
      __$TokenResponseCopyWithImpl<_TokenResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TokenResponseToJson(this);
  }
}

abstract class _TokenResponse extends TokenResponse {
  const factory _TokenResponse(
      {@JsonKey(includeIfNull: false, name: 'access_token')
          String? accessToken,
      @JsonKey(includeIfNull: false, name: 'token_type')
          String? tokenType,
      @JsonKey(includeIfNull: false, name: 'expires_in')
          int? expiryDate}) = _$_TokenResponse;
  const _TokenResponse._() : super._();

  factory _TokenResponse.fromJson(Map<String, dynamic> json) =
      _$_TokenResponse.fromJson;

  @override
  @JsonKey(includeIfNull: false, name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'token_type')
  String? get tokenType => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'expires_in')
  int? get expiryDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TokenResponseCopyWith<_TokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
