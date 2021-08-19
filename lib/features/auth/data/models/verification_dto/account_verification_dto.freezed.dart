// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of account_verification_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountVerificationDTO _$AccountVerificationDTOFromJson(
    Map<String, dynamic> json) {
  return _AccountVerificationDTO.fromJson(json);
}

/// @nodoc
class _$AccountVerificationDTOTearOff {
  const _$AccountVerificationDTOTearOff();

  _AccountVerificationDTO call(
      {@JsonKey(includeIfNull: false) String? email,
      @JsonKey(includeIfNull: false) String? bvn,
      @JsonKey(includeIfNull: false) String? token,
      @JsonKey(includeIfNull: false) String? street,
      @JsonKey(includeIfNull: false, name: 'state') String? stateId,
      @JsonKey(includeIfNull: false, name: 'country') String? countryId}) {
    return _AccountVerificationDTO(
      email: email,
      bvn: bvn,
      token: token,
      street: street,
      stateId: stateId,
      countryId: countryId,
    );
  }

  AccountVerificationDTO fromJson(Map<String, Object> json) {
    return AccountVerificationDTO.fromJson(json);
  }
}

/// @nodoc
const $AccountVerificationDTO = _$AccountVerificationDTOTearOff();

/// @nodoc
mixin _$AccountVerificationDTO {
  @JsonKey(includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get bvn => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get street => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'state')
  String? get stateId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'country')
  String? get countryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountVerificationDTOCopyWith<AccountVerificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountVerificationDTOCopyWith<$Res> {
  factory $AccountVerificationDTOCopyWith(AccountVerificationDTO value,
          $Res Function(AccountVerificationDTO) then) =
      _$AccountVerificationDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) String? email,
      @JsonKey(includeIfNull: false) String? bvn,
      @JsonKey(includeIfNull: false) String? token,
      @JsonKey(includeIfNull: false) String? street,
      @JsonKey(includeIfNull: false, name: 'state') String? stateId,
      @JsonKey(includeIfNull: false, name: 'country') String? countryId});
}

/// @nodoc
class _$AccountVerificationDTOCopyWithImpl<$Res>
    implements $AccountVerificationDTOCopyWith<$Res> {
  _$AccountVerificationDTOCopyWithImpl(this._value, this._then);

  final AccountVerificationDTO _value;
  // ignore: unused_field
  final $Res Function(AccountVerificationDTO) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? bvn = freezed,
    Object? token = freezed,
    Object? street = freezed,
    Object? stateId = freezed,
    Object? countryId = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bvn: bvn == freezed
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AccountVerificationDTOCopyWith<$Res>
    implements $AccountVerificationDTOCopyWith<$Res> {
  factory _$AccountVerificationDTOCopyWith(_AccountVerificationDTO value,
          $Res Function(_AccountVerificationDTO) then) =
      __$AccountVerificationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) String? email,
      @JsonKey(includeIfNull: false) String? bvn,
      @JsonKey(includeIfNull: false) String? token,
      @JsonKey(includeIfNull: false) String? street,
      @JsonKey(includeIfNull: false, name: 'state') String? stateId,
      @JsonKey(includeIfNull: false, name: 'country') String? countryId});
}

/// @nodoc
class __$AccountVerificationDTOCopyWithImpl<$Res>
    extends _$AccountVerificationDTOCopyWithImpl<$Res>
    implements _$AccountVerificationDTOCopyWith<$Res> {
  __$AccountVerificationDTOCopyWithImpl(_AccountVerificationDTO _value,
      $Res Function(_AccountVerificationDTO) _then)
      : super(_value, (v) => _then(v as _AccountVerificationDTO));

  @override
  _AccountVerificationDTO get _value => super._value as _AccountVerificationDTO;

  @override
  $Res call({
    Object? email = freezed,
    Object? bvn = freezed,
    Object? token = freezed,
    Object? street = freezed,
    Object? stateId = freezed,
    Object? countryId = freezed,
  }) {
    return _then(_AccountVerificationDTO(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bvn: bvn == freezed
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountVerificationDTO extends _AccountVerificationDTO {
  const _$_AccountVerificationDTO(
      {@JsonKey(includeIfNull: false) this.email,
      @JsonKey(includeIfNull: false) this.bvn,
      @JsonKey(includeIfNull: false) this.token,
      @JsonKey(includeIfNull: false) this.street,
      @JsonKey(includeIfNull: false, name: 'state') this.stateId,
      @JsonKey(includeIfNull: false, name: 'country') this.countryId})
      : super._();

  factory _$_AccountVerificationDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AccountVerificationDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? email;
  @override
  @JsonKey(includeIfNull: false)
  final String? bvn;
  @override
  @JsonKey(includeIfNull: false)
  final String? token;
  @override
  @JsonKey(includeIfNull: false)
  final String? street;
  @override
  @JsonKey(includeIfNull: false, name: 'state')
  final String? stateId;
  @override
  @JsonKey(includeIfNull: false, name: 'country')
  final String? countryId;

  @override
  String toString() {
    return 'AccountVerificationDTO(email: $email, bvn: $bvn, token: $token, street: $street, stateId: $stateId, countryId: $countryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountVerificationDTO &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.bvn, bvn) ||
                const DeepCollectionEquality().equals(other.bvn, bvn)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.stateId, stateId) ||
                const DeepCollectionEquality()
                    .equals(other.stateId, stateId)) &&
            (identical(other.countryId, countryId) ||
                const DeepCollectionEquality()
                    .equals(other.countryId, countryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(bvn) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(stateId) ^
      const DeepCollectionEquality().hash(countryId);

  @JsonKey(ignore: true)
  @override
  _$AccountVerificationDTOCopyWith<_AccountVerificationDTO> get copyWith =>
      __$AccountVerificationDTOCopyWithImpl<_AccountVerificationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccountVerificationDTOToJson(this);
  }
}

abstract class _AccountVerificationDTO extends AccountVerificationDTO {
  const factory _AccountVerificationDTO(
          {@JsonKey(includeIfNull: false) String? email,
          @JsonKey(includeIfNull: false) String? bvn,
          @JsonKey(includeIfNull: false) String? token,
          @JsonKey(includeIfNull: false) String? street,
          @JsonKey(includeIfNull: false, name: 'state') String? stateId,
          @JsonKey(includeIfNull: false, name: 'country') String? countryId}) =
      _$_AccountVerificationDTO;
  const _AccountVerificationDTO._() : super._();

  factory _AccountVerificationDTO.fromJson(Map<String, dynamic> json) =
      _$_AccountVerificationDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get bvn => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get street => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'state')
  String? get stateId => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'country')
  String? get countryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountVerificationDTOCopyWith<_AccountVerificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
