// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

  _Country call(
      {UniqueId<String?>? id,
      CountryName? name,
      String? codeName,
      String? dialCode,
      bool isSupported = false,
      KtList<ProvinceState> states = const KtList.empty(),
      String language = 'English - UK',
      Currency? currency,
      String prefix = Country.DEFAULT_PREFIX,
      String hintText = Country.DEFAULT_HINT_TEXT,
      int digitsCount = Country.DEFAULT_DIGITS_COUNT,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) {
    return _Country(
      id: id,
      name: name,
      codeName: codeName,
      dialCode: dialCode,
      isSupported: isSupported,
      states: states,
      language: language,
      currency: currency,
      prefix: prefix,
      hintText: hintText,
      digitsCount: digitsCount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  UniqueId<String?>? get id => throw _privateConstructorUsedError;
  CountryName? get name => throw _privateConstructorUsedError;
  String? get codeName => throw _privateConstructorUsedError;
  String? get dialCode => throw _privateConstructorUsedError;
  bool get isSupported => throw _privateConstructorUsedError;
  KtList<ProvinceState> get states => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  Currency? get currency => throw _privateConstructorUsedError;
  String get prefix => throw _privateConstructorUsedError;
  String get hintText => throw _privateConstructorUsedError;
  int get digitsCount => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?>? id,
      CountryName? name,
      String? codeName,
      String? dialCode,
      bool isSupported,
      KtList<ProvinceState> states,
      String language,
      Currency? currency,
      String prefix,
      String hintText,
      int digitsCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  $CurrencyCopyWith<$Res>? get currency;
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? codeName = freezed,
    Object? dialCode = freezed,
    Object? isSupported = freezed,
    Object? states = freezed,
    Object? language = freezed,
    Object? currency = freezed,
    Object? prefix = freezed,
    Object? hintText = freezed,
    Object? digitsCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CountryName?,
      codeName: codeName == freezed
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String?,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isSupported: isSupported == freezed
          ? _value.isSupported
          : isSupported // ignore: cast_nullable_to_non_nullable
              as bool,
      states: states == freezed
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as KtList<ProvinceState>,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency?,
      prefix: prefix == freezed
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      hintText: hintText == freezed
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String,
      digitsCount: digitsCount == freezed
          ? _value.digitsCount
          : digitsCount // ignore: cast_nullable_to_non_nullable
              as int,
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
  $CurrencyCopyWith<$Res>? get currency {
    if (_value.currency == null) {
      return null;
    }

    return $CurrencyCopyWith<$Res>(_value.currency!, (value) {
      return _then(_value.copyWith(currency: value));
    });
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?>? id,
      CountryName? name,
      String? codeName,
      String? dialCode,
      bool isSupported,
      KtList<ProvinceState> states,
      String language,
      Currency? currency,
      String prefix,
      String hintText,
      int digitsCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt});

  @override
  $CurrencyCopyWith<$Res>? get currency;
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? codeName = freezed,
    Object? dialCode = freezed,
    Object? isSupported = freezed,
    Object? states = freezed,
    Object? language = freezed,
    Object? currency = freezed,
    Object? prefix = freezed,
    Object? hintText = freezed,
    Object? digitsCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_Country(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as CountryName?,
      codeName: codeName == freezed
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String?,
      dialCode: dialCode == freezed
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isSupported: isSupported == freezed
          ? _value.isSupported
          : isSupported // ignore: cast_nullable_to_non_nullable
              as bool,
      states: states == freezed
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as KtList<ProvinceState>,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency?,
      prefix: prefix == freezed
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      hintText: hintText == freezed
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String,
      digitsCount: digitsCount == freezed
          ? _value.digitsCount
          : digitsCount // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$_Country implements _Country {
  const _$_Country(
      {this.id,
      this.name,
      this.codeName,
      this.dialCode,
      this.isSupported = false,
      this.states = const KtList.empty(),
      this.language = 'English - UK',
      this.currency,
      this.prefix = Country.DEFAULT_PREFIX,
      this.hintText = Country.DEFAULT_HINT_TEXT,
      this.digitsCount = Country.DEFAULT_DIGITS_COUNT,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  @override
  final UniqueId<String?>? id;
  @override
  final CountryName? name;
  @override
  final String? codeName;
  @override
  final String? dialCode;
  @JsonKey(defaultValue: false)
  @override
  final bool isSupported;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<ProvinceState> states;
  @JsonKey(defaultValue: 'English - UK')
  @override
  final String language;
  @override
  final Currency? currency;
  @JsonKey(defaultValue: Country.DEFAULT_PREFIX)
  @override
  final String prefix;
  @JsonKey(defaultValue: Country.DEFAULT_HINT_TEXT)
  @override
  final String hintText;
  @JsonKey(defaultValue: Country.DEFAULT_DIGITS_COUNT)
  @override
  final int digitsCount;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Country(id: $id, name: $name, codeName: $codeName, dialCode: $dialCode, isSupported: $isSupported, states: $states, language: $language, currency: $currency, prefix: $prefix, hintText: $hintText, digitsCount: $digitsCount, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Country &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.codeName, codeName) ||
                const DeepCollectionEquality()
                    .equals(other.codeName, codeName)) &&
            (identical(other.dialCode, dialCode) ||
                const DeepCollectionEquality()
                    .equals(other.dialCode, dialCode)) &&
            (identical(other.isSupported, isSupported) ||
                const DeepCollectionEquality()
                    .equals(other.isSupported, isSupported)) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.prefix, prefix) ||
                const DeepCollectionEquality().equals(other.prefix, prefix)) &&
            (identical(other.hintText, hintText) ||
                const DeepCollectionEquality()
                    .equals(other.hintText, hintText)) &&
            (identical(other.digitsCount, digitsCount) ||
                const DeepCollectionEquality()
                    .equals(other.digitsCount, digitsCount)) &&
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
      const DeepCollectionEquality().hash(codeName) ^
      const DeepCollectionEquality().hash(dialCode) ^
      const DeepCollectionEquality().hash(isSupported) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(prefix) ^
      const DeepCollectionEquality().hash(hintText) ^
      const DeepCollectionEquality().hash(digitsCount) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);
}

abstract class _Country implements Country {
  const factory _Country(
      {UniqueId<String?>? id,
      CountryName? name,
      String? codeName,
      String? dialCode,
      bool isSupported,
      KtList<ProvinceState> states,
      String language,
      Currency? currency,
      String prefix,
      String hintText,
      int digitsCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt}) = _$_Country;

  @override
  UniqueId<String?>? get id => throw _privateConstructorUsedError;
  @override
  CountryName? get name => throw _privateConstructorUsedError;
  @override
  String? get codeName => throw _privateConstructorUsedError;
  @override
  String? get dialCode => throw _privateConstructorUsedError;
  @override
  bool get isSupported => throw _privateConstructorUsedError;
  @override
  KtList<ProvinceState> get states => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  Currency? get currency => throw _privateConstructorUsedError;
  @override
  String get prefix => throw _privateConstructorUsedError;
  @override
  String get hintText => throw _privateConstructorUsedError;
  @override
  int get digitsCount => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
