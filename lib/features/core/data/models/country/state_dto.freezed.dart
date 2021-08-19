// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of state_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StateDTO _$StateDTOFromJson(Map<String, dynamic> json) {
  return _StateDTO.fromJson(json);
}

/// @nodoc
class _$StateDTOTearOff {
  const _$StateDTOTearOff();

  _StateDTO call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported = false,
      @JsonKey(includeIfNull: false, name: 'country_id')
      @IntegerSerializer()
          String? countryId,
      @JsonKey(includeIfNull: false)
          CountryDTO? country,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) {
    return _StateDTO(
      id: id,
      name: name,
      isSupported: isSupported,
      countryId: countryId,
      country: country,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  StateDTO fromJson(Map<String, Object> json) {
    return StateDTO.fromJson(json);
  }
}

/// @nodoc
const $StateDTO = _$StateDTOTearOff();

/// @nodoc
mixin _$StateDTO {
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
  @IntToBoolSerializer()
  bool get isSupported => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'country_id')
  @IntegerSerializer()
  String? get countryId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  CountryDTO? get country => throw _privateConstructorUsedError;
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
  $StateDTOCopyWith<StateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateDTOCopyWith<$Res> {
  factory $StateDTOCopyWith(StateDTO value, $Res Function(StateDTO) then) =
      _$StateDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, name: 'country_id')
      @IntegerSerializer()
          String? countryId,
      @JsonKey(includeIfNull: false)
          CountryDTO? country,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt});

  $CountryDTOCopyWith<$Res>? get country;
}

/// @nodoc
class _$StateDTOCopyWithImpl<$Res> implements $StateDTOCopyWith<$Res> {
  _$StateDTOCopyWithImpl(this._value, this._then);

  final StateDTO _value;
  // ignore: unused_field
  final $Res Function(StateDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isSupported = freezed,
    Object? countryId = freezed,
    Object? country = freezed,
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
      isSupported: isSupported == freezed
          ? _value.isSupported
          : isSupported // ignore: cast_nullable_to_non_nullable
              as bool,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryDTO?,
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

  @override
  $CountryDTOCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryDTOCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc
abstract class _$StateDTOCopyWith<$Res> implements $StateDTOCopyWith<$Res> {
  factory _$StateDTOCopyWith(_StateDTO value, $Res Function(_StateDTO) then) =
      __$StateDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, name: 'country_id')
      @IntegerSerializer()
          String? countryId,
      @JsonKey(includeIfNull: false)
          CountryDTO? country,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt});

  @override
  $CountryDTOCopyWith<$Res>? get country;
}

/// @nodoc
class __$StateDTOCopyWithImpl<$Res> extends _$StateDTOCopyWithImpl<$Res>
    implements _$StateDTOCopyWith<$Res> {
  __$StateDTOCopyWithImpl(_StateDTO _value, $Res Function(_StateDTO) _then)
      : super(_value, (v) => _then(v as _StateDTO));

  @override
  _StateDTO get _value => super._value as _StateDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isSupported = freezed,
    Object? countryId = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_StateDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isSupported: isSupported == freezed
          ? _value.isSupported
          : isSupported // ignore: cast_nullable_to_non_nullable
              as bool,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryDTO?,
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
class _$_StateDTO extends _StateDTO {
  const _$_StateDTO(
      {@JsonKey(includeIfNull: false)
          this.id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.name,
      @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
      @IntToBoolSerializer()
          this.isSupported = false,
      @JsonKey(includeIfNull: false, name: 'country_id')
      @IntegerSerializer()
          this.countryId,
      @JsonKey(includeIfNull: false)
          this.country,
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

  factory _$_StateDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_StateDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String? name;
  @override
  @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
  @IntToBoolSerializer()
  final bool isSupported;
  @override
  @JsonKey(includeIfNull: false, name: 'country_id')
  @IntegerSerializer()
  final String? countryId;
  @override
  @JsonKey(includeIfNull: false)
  final CountryDTO? country;
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
    return 'StateDTO(id: $id, name: $name, isSupported: $isSupported, countryId: $countryId, country: $country, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StateDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isSupported, isSupported) ||
                const DeepCollectionEquality()
                    .equals(other.isSupported, isSupported)) &&
            (identical(other.countryId, countryId) ||
                const DeepCollectionEquality()
                    .equals(other.countryId, countryId)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
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
      const DeepCollectionEquality().hash(isSupported) ^
      const DeepCollectionEquality().hash(countryId) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$StateDTOCopyWith<_StateDTO> get copyWith =>
      __$StateDTOCopyWithImpl<_StateDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StateDTOToJson(this);
  }
}

abstract class _StateDTO extends StateDTO {
  const factory _StateDTO(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, name: 'country_id')
      @IntegerSerializer()
          String? countryId,
      @JsonKey(includeIfNull: false)
          CountryDTO? country,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) = _$_StateDTO;
  const _StateDTO._() : super._();

  factory _StateDTO.fromJson(Map<String, dynamic> json) = _$_StateDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
  @IntToBoolSerializer()
  bool get isSupported => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'country_id')
  @IntegerSerializer()
  String? get countryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  CountryDTO? get country => throw _privateConstructorUsedError;
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
  _$StateDTOCopyWith<_StateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
