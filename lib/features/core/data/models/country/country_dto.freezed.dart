// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of country_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDTO _$CountryDTOFromJson(Map<String, dynamic> json) {
  return _CountryDTO.fromJson(json);
}

/// @nodoc
class _$CountryDTOTearOff {
  const _$CountryDTOTearOff();

  _CountryDTO call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String? phoneCode,
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported = false,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
          String? currencyType,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String? currencyName,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) {
    return _CountryDTO(
      id: id,
      name: name,
      phoneCode: phoneCode,
      isSupported: isSupported,
      currencyType: currencyType,
      currencyName: currencyName,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  CountryDTO fromJson(Map<String, Object> json) {
    return CountryDTO.fromJson(json);
  }
}

/// @nodoc
const $CountryDTO = _$CountryDTOTearOff();

/// @nodoc
mixin _$CountryDTO {
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
  String? get phoneCode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
  @IntToBoolSerializer()
  bool get isSupported => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
  String? get currencyType => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
  String? get currencyName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDTOCopyWith<CountryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDTOCopyWith<$Res> {
  factory $CountryDTOCopyWith(
          CountryDTO value, $Res Function(CountryDTO) then) =
      _$CountryDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String? phoneCode,
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
          String? currencyType,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String? currencyName,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt});
}

/// @nodoc
class _$CountryDTOCopyWithImpl<$Res> implements $CountryDTOCopyWith<$Res> {
  _$CountryDTOCopyWithImpl(this._value, this._then);

  final CountryDTO _value;
  // ignore: unused_field
  final $Res Function(CountryDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneCode = freezed,
    Object? isSupported = freezed,
    Object? currencyType = freezed,
    Object? currencyName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isSupported: isSupported == freezed
          ? _value.isSupported
          : isSupported // ignore: cast_nullable_to_non_nullable
              as bool,
      currencyType: currencyType == freezed
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$CountryDTOCopyWith<$Res> implements $CountryDTOCopyWith<$Res> {
  factory _$CountryDTOCopyWith(
          _CountryDTO value, $Res Function(_CountryDTO) then) =
      __$CountryDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String? phoneCode,
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
          String? currencyType,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String? currencyName,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt});
}

/// @nodoc
class __$CountryDTOCopyWithImpl<$Res> extends _$CountryDTOCopyWithImpl<$Res>
    implements _$CountryDTOCopyWith<$Res> {
  __$CountryDTOCopyWithImpl(
      _CountryDTO _value, $Res Function(_CountryDTO) _then)
      : super(_value, (v) => _then(v as _CountryDTO));

  @override
  _CountryDTO get _value => super._value as _CountryDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneCode = freezed,
    Object? isSupported = freezed,
    Object? currencyType = freezed,
    Object? currencyName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_CountryDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isSupported: isSupported == freezed
          ? _value.isSupported
          : isSupported // ignore: cast_nullable_to_non_nullable
              as bool,
      currencyType: currencyType == freezed
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDTO extends _CountryDTO {
  const _$_CountryDTO(
      {@JsonKey(includeIfNull: false)
          this.id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.name,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          this.phoneCode,
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
      @IntToBoolSerializer()
          this.isSupported = false,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
          this.currencyType,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          this.currencyName,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_CountryDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String? name;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
  final String? phoneCode;
  @override
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
  @IntToBoolSerializer()
  final bool isSupported;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
  final String? currencyType;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
  final String? currencyName;
  @override
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final DateTime? updatedAt;
  @override
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'CountryDTO(id: $id, name: $name, phoneCode: $phoneCode, isSupported: $isSupported, currencyType: $currencyType, currencyName: $currencyName, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneCode, phoneCode) ||
                const DeepCollectionEquality()
                    .equals(other.phoneCode, phoneCode)) &&
            (identical(other.isSupported, isSupported) ||
                const DeepCollectionEquality()
                    .equals(other.isSupported, isSupported)) &&
            (identical(other.currencyType, currencyType) ||
                const DeepCollectionEquality()
                    .equals(other.currencyType, currencyType)) &&
            (identical(other.currencyName, currencyName) ||
                const DeepCollectionEquality()
                    .equals(other.currencyName, currencyName)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneCode) ^
      const DeepCollectionEquality().hash(isSupported) ^
      const DeepCollectionEquality().hash(currencyType) ^
      const DeepCollectionEquality().hash(currencyName) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$CountryDTOCopyWith<_CountryDTO> get copyWith =>
      __$CountryDTOCopyWithImpl<_CountryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryDTOToJson(this);
  }
}

abstract class _CountryDTO extends CountryDTO {
  const factory _CountryDTO(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String? phoneCode,
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
          String? currencyType,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String? currencyName,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) = _$_CountryDTO;
  const _CountryDTO._() : super._();

  factory _CountryDTO.fromJson(Map<String, dynamic> json) =
      _$_CountryDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
  String? get phoneCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
  @IntToBoolSerializer()
  bool get isSupported => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
  String? get currencyType => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
  String? get currencyName => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryDTOCopyWith<_CountryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
