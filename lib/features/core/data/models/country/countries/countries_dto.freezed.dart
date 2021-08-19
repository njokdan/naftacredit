// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of countries_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountriesDTO _$CountriesDTOFromJson(Map<String, dynamic> json) {
  return _CountriesDTO.fromJson(json);
}

/// @nodoc
class _$CountriesDTOTearOff {
  const _$CountriesDTOTearOff();

  _CountriesDTO call(
      @JsonKey(includeIfNull: false, defaultValue: [])
          List<CountriesList>? data,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt) {
    return _CountriesDTO(
      data,
      createdAt,
      updatedAt,
      deletedAt,
    );
  }

  CountriesDTO fromJson(Map<String, Object> json) {
    return CountriesDTO.fromJson(json);
  }
}

/// @nodoc
const $CountriesDTO = _$CountriesDTOTearOff();

/// @nodoc
mixin _$CountriesDTO {
  @JsonKey(includeIfNull: false, defaultValue: [])
  List<CountriesList>? get data => throw _privateConstructorUsedError;
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
  $CountriesDTOCopyWith<CountriesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesDTOCopyWith<$Res> {
  factory $CountriesDTOCopyWith(
          CountriesDTO value, $Res Function(CountriesDTO) then) =
      _$CountriesDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false, defaultValue: [])
          List<CountriesList>? data,
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
class _$CountriesDTOCopyWithImpl<$Res> implements $CountriesDTOCopyWith<$Res> {
  _$CountriesDTOCopyWithImpl(this._value, this._then);

  final CountriesDTO _value;
  // ignore: unused_field
  final $Res Function(CountriesDTO) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountriesList>?,
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
abstract class _$CountriesDTOCopyWith<$Res>
    implements $CountriesDTOCopyWith<$Res> {
  factory _$CountriesDTOCopyWith(
          _CountriesDTO value, $Res Function(_CountriesDTO) then) =
      __$CountriesDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false, defaultValue: [])
          List<CountriesList>? data,
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
class __$CountriesDTOCopyWithImpl<$Res> extends _$CountriesDTOCopyWithImpl<$Res>
    implements _$CountriesDTOCopyWith<$Res> {
  __$CountriesDTOCopyWithImpl(
      _CountriesDTO _value, $Res Function(_CountriesDTO) _then)
      : super(_value, (v) => _then(v as _CountriesDTO));

  @override
  _CountriesDTO get _value => super._value as _CountriesDTO;

  @override
  $Res call({
    Object? data = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_CountriesDTO(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountriesList>?,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountriesDTO extends _CountriesDTO {
  const _$_CountriesDTO(
      @JsonKey(includeIfNull: false, defaultValue: [])
          this.data,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt)
      : super._();

  factory _$_CountriesDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CountriesDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false, defaultValue: [])
  final List<CountriesList>? data;
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
    return 'CountriesDTO(data: $data, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountriesDTO &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
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
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$CountriesDTOCopyWith<_CountriesDTO> get copyWith =>
      __$CountriesDTOCopyWithImpl<_CountriesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountriesDTOToJson(this);
  }
}

abstract class _CountriesDTO extends CountriesDTO {
  const factory _CountriesDTO(
      @JsonKey(includeIfNull: false, defaultValue: [])
          List<CountriesList>? data,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt) = _$_CountriesDTO;
  const _CountriesDTO._() : super._();

  factory _CountriesDTO.fromJson(Map<String, dynamic> json) =
      _$_CountriesDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false, defaultValue: [])
  List<CountriesList>? get data => throw _privateConstructorUsedError;
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
  _$CountriesDTOCopyWith<_CountriesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
