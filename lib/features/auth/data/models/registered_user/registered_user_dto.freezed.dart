// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of registered_user_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisteredUserDTO _$RegisteredUserDTOFromJson(Map<String, dynamic> json) {
  return _RegisteredUserDTO.fromJson(json);
}

/// @nodoc
class _$RegisteredUserDTOTearOff {
  const _$RegisteredUserDTOTearOff();

  _RegisteredUserDTO call(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) UserDTO? data}) {
    return _RegisteredUserDTO(
      status: status,
      data: data,
    );
  }

  RegisteredUserDTO fromJson(Map<String, Object> json) {
    return RegisteredUserDTO.fromJson(json);
  }
}

/// @nodoc
const $RegisteredUserDTO = _$RegisteredUserDTOTearOff();

/// @nodoc
mixin _$RegisteredUserDTO {
  @JsonKey(includeIfNull: false)
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  UserDTO? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisteredUserDTOCopyWith<RegisteredUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisteredUserDTOCopyWith<$Res> {
  factory $RegisteredUserDTOCopyWith(
          RegisteredUserDTO value, $Res Function(RegisteredUserDTO) then) =
      _$RegisteredUserDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) UserDTO? data});

  $UserDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisteredUserDTOCopyWithImpl<$Res>
    implements $RegisteredUserDTOCopyWith<$Res> {
  _$RegisteredUserDTOCopyWithImpl(this._value, this._then);

  final RegisteredUserDTO _value;
  // ignore: unused_field
  final $Res Function(RegisteredUserDTO) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
    ));
  }

  @override
  $UserDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$RegisteredUserDTOCopyWith<$Res>
    implements $RegisteredUserDTOCopyWith<$Res> {
  factory _$RegisteredUserDTOCopyWith(
          _RegisteredUserDTO value, $Res Function(_RegisteredUserDTO) then) =
      __$RegisteredUserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) UserDTO? data});

  @override
  $UserDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$RegisteredUserDTOCopyWithImpl<$Res>
    extends _$RegisteredUserDTOCopyWithImpl<$Res>
    implements _$RegisteredUserDTOCopyWith<$Res> {
  __$RegisteredUserDTOCopyWithImpl(
      _RegisteredUserDTO _value, $Res Function(_RegisteredUserDTO) _then)
      : super(_value, (v) => _then(v as _RegisteredUserDTO));

  @override
  _RegisteredUserDTO get _value => super._value as _RegisteredUserDTO;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_RegisteredUserDTO(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisteredUserDTO extends _RegisteredUserDTO {
  const _$_RegisteredUserDTO(
      {@JsonKey(includeIfNull: false) this.status,
      @JsonKey(includeIfNull: false) this.data})
      : super._();

  factory _$_RegisteredUserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_RegisteredUserDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? status;
  @override
  @JsonKey(includeIfNull: false)
  final UserDTO? data;

  @override
  String toString() {
    return 'RegisteredUserDTO(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisteredUserDTO &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$RegisteredUserDTOCopyWith<_RegisteredUserDTO> get copyWith =>
      __$RegisteredUserDTOCopyWithImpl<_RegisteredUserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegisteredUserDTOToJson(this);
  }
}

abstract class _RegisteredUserDTO extends RegisteredUserDTO {
  const factory _RegisteredUserDTO(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) UserDTO? data}) = _$_RegisteredUserDTO;
  const _RegisteredUserDTO._() : super._();

  factory _RegisteredUserDTO.fromJson(Map<String, dynamic> json) =
      _$_RegisteredUserDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  UserDTO? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisteredUserDTOCopyWith<_RegisteredUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
