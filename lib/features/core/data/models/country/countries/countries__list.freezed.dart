// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of countries__list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountriesList _$CountriesListFromJson(Map<String, dynamic> json) {
  return _CountriesList.fromJson(json);
}

/// @nodoc
class _$CountriesListTearOff {
  const _$CountriesListTearOff();

  _CountriesList call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          String? name,
      @JsonKey(includeIfNull: false, name: 'country_phone_code')
          String? countryPhoneCode,
      @JsonKey(includeIfNull: false, name: 'is_supported', defaultValue: true)
      @IntToBoolSerializer()
          bool isSupported = false,
      @JsonKey(includeIfNull: false)
          String? currency,
      @JsonKey(includeIfNull: false, name: 'currency_name')
          String? currencyName,
      @JsonKey(includeIfNull: false)
          List<StateDTO>? states = const [],
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) {
    return _CountriesList(
      id: id,
      name: name,
      countryPhoneCode: countryPhoneCode,
      isSupported: isSupported,
      currency: currency,
      currencyName: currencyName,
      states: states,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  CountriesList fromJson(Map<String, Object> json) {
    return CountriesList.fromJson(json);
  }
}

/// @nodoc
const $CountriesList = _$CountriesListTearOff();

/// @nodoc
mixin _$CountriesList {
// The country's Id
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'country_phone_code')
  String? get countryPhoneCode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'is_supported', defaultValue: true)
  @IntToBoolSerializer()
  bool get isSupported => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'currency_name')
  String? get currencyName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<StateDTO>? get states => throw _privateConstructorUsedError;
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
  $CountriesListCopyWith<CountriesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesListCopyWith<$Res> {
  factory $CountriesListCopyWith(
          CountriesList value, $Res Function(CountriesList) then) =
      _$CountriesListCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          String? name,
      @JsonKey(includeIfNull: false, name: 'country_phone_code')
          String? countryPhoneCode,
      @JsonKey(includeIfNull: false, name: 'is_supported', defaultValue: true)
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false)
          String? currency,
      @JsonKey(includeIfNull: false, name: 'currency_name')
          String? currencyName,
      @JsonKey(includeIfNull: false)
          List<StateDTO>? states,
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
class _$CountriesListCopyWithImpl<$Res>
    implements $CountriesListCopyWith<$Res> {
  _$CountriesListCopyWithImpl(this._value, this._then);

  final CountriesList _value;
  // ignore: unused_field
  final $Res Function(CountriesList) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryPhoneCode = freezed,
    Object? isSupported = freezed,
    Object? currency = freezed,
    Object? currencyName = freezed,
    Object? states = freezed,
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
      countryPhoneCode: countryPhoneCode == freezed
          ? _value.countryPhoneCode
          : countryPhoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isSupported: isSupported == freezed
          ? _value.isSupported
          : isSupported // ignore: cast_nullable_to_non_nullable
              as bool,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      states: states == freezed
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as List<StateDTO>?,
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
abstract class _$CountriesListCopyWith<$Res>
    implements $CountriesListCopyWith<$Res> {
  factory _$CountriesListCopyWith(
          _CountriesList value, $Res Function(_CountriesList) then) =
      __$CountriesListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          String? name,
      @JsonKey(includeIfNull: false, name: 'country_phone_code')
          String? countryPhoneCode,
      @JsonKey(includeIfNull: false, name: 'is_supported', defaultValue: true)
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false)
          String? currency,
      @JsonKey(includeIfNull: false, name: 'currency_name')
          String? currencyName,
      @JsonKey(includeIfNull: false)
          List<StateDTO>? states,
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
class __$CountriesListCopyWithImpl<$Res>
    extends _$CountriesListCopyWithImpl<$Res>
    implements _$CountriesListCopyWith<$Res> {
  __$CountriesListCopyWithImpl(
      _CountriesList _value, $Res Function(_CountriesList) _then)
      : super(_value, (v) => _then(v as _CountriesList));

  @override
  _CountriesList get _value => super._value as _CountriesList;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? countryPhoneCode = freezed,
    Object? isSupported = freezed,
    Object? currency = freezed,
    Object? currencyName = freezed,
    Object? states = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_CountriesList(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      countryPhoneCode: countryPhoneCode == freezed
          ? _value.countryPhoneCode
          : countryPhoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isSupported: isSupported == freezed
          ? _value.isSupported
          : isSupported // ignore: cast_nullable_to_non_nullable
              as bool,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      states: states == freezed
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as List<StateDTO>?,
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
class _$_CountriesList extends _CountriesList {
  const _$_CountriesList(
      {@JsonKey(includeIfNull: false)
          this.id,
      @JsonKey(includeIfNull: false)
          this.name,
      @JsonKey(includeIfNull: false, name: 'country_phone_code')
          this.countryPhoneCode,
      @JsonKey(includeIfNull: false, name: 'is_supported', defaultValue: true)
      @IntToBoolSerializer()
          this.isSupported = false,
      @JsonKey(includeIfNull: false)
          this.currency,
      @JsonKey(includeIfNull: false, name: 'currency_name')
          this.currencyName,
      @JsonKey(includeIfNull: false)
          this.states = const [],
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

  factory _$_CountriesList.fromJson(Map<String, dynamic> json) =>
      _$_$_CountriesListFromJson(json);

  @override // The country's Id
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(includeIfNull: false)
  final String? name;
  @override
  @JsonKey(includeIfNull: false, name: 'country_phone_code')
  final String? countryPhoneCode;
  @override
  @JsonKey(includeIfNull: false, name: 'is_supported', defaultValue: true)
  @IntToBoolSerializer()
  final bool isSupported;
  @override
  @JsonKey(includeIfNull: false)
  final String? currency;
  @override
  @JsonKey(includeIfNull: false, name: 'currency_name')
  final String? currencyName;
  @override
  @JsonKey(includeIfNull: false)
  final List<StateDTO>? states;
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
    return 'CountriesList(id: $id, name: $name, countryPhoneCode: $countryPhoneCode, isSupported: $isSupported, currency: $currency, currencyName: $currencyName, states: $states, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountriesList &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.countryPhoneCode, countryPhoneCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryPhoneCode, countryPhoneCode)) &&
            (identical(other.isSupported, isSupported) ||
                const DeepCollectionEquality()
                    .equals(other.isSupported, isSupported)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.currencyName, currencyName) ||
                const DeepCollectionEquality()
                    .equals(other.currencyName, currencyName)) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
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
      const DeepCollectionEquality().hash(countryPhoneCode) ^
      const DeepCollectionEquality().hash(isSupported) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencyName) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$CountriesListCopyWith<_CountriesList> get copyWith =>
      __$CountriesListCopyWithImpl<_CountriesList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountriesListToJson(this);
  }
}

abstract class _CountriesList extends CountriesList {
  const factory _CountriesList(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          String? name,
      @JsonKey(includeIfNull: false, name: 'country_phone_code')
          String? countryPhoneCode,
      @JsonKey(includeIfNull: false, name: 'is_supported', defaultValue: true)
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false)
          String? currency,
      @JsonKey(includeIfNull: false, name: 'currency_name')
          String? currencyName,
      @JsonKey(includeIfNull: false)
          List<StateDTO>? states,
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) = _$_CountriesList;
  const _CountriesList._() : super._();

  factory _CountriesList.fromJson(Map<String, dynamic> json) =
      _$_CountriesList.fromJson;

  @override // The country's Id
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'country_phone_code')
  String? get countryPhoneCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'is_supported', defaultValue: true)
  @IntToBoolSerializer()
  bool get isSupported => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'currency_name')
  String? get currencyName => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  List<StateDTO>? get states => throw _privateConstructorUsedError;
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
  _$CountriesListCopyWith<_CountriesList> get copyWith =>
      throw _privateConstructorUsedError;
}
