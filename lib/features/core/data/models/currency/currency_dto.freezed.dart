// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of currency.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyDTO _$CurrencyDTOFromJson(Map<String, dynamic> json) {
  return _CurrencyDTO.fromJson(json);
}

/// @nodoc
class _$CurrencyDTOTearOff {
  const _$CurrencyDTOTearOff();

  _CurrencyDTO call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'name')
          String? countryName,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String? countryPhoneCode,
      @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported = false,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? currency,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String? currencyName}) {
    return _CurrencyDTO(
      id: id,
      countryName: countryName,
      countryPhoneCode: countryPhoneCode,
      isSupported: isSupported,
      currency: currency,
      currencyName: currencyName,
    );
  }

  CurrencyDTO fromJson(Map<String, Object> json) {
    return CurrencyDTO.fromJson(json);
  }
}

/// @nodoc
const $CurrencyDTO = _$CurrencyDTOTearOff();

/// @nodoc
mixin _$CurrencyDTO {
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'name')
  String? get countryName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
  String? get countryPhoneCode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
  @IntToBoolSerializer()
  bool get isSupported => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '')
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
  String? get currencyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyDTOCopyWith<CurrencyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyDTOCopyWith<$Res> {
  factory $CurrencyDTOCopyWith(
          CurrencyDTO value, $Res Function(CurrencyDTO) then) =
      _$CurrencyDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'name')
          String? countryName,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String? countryPhoneCode,
      @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? currency,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String? currencyName});
}

/// @nodoc
class _$CurrencyDTOCopyWithImpl<$Res> implements $CurrencyDTOCopyWith<$Res> {
  _$CurrencyDTOCopyWithImpl(this._value, this._then);

  final CurrencyDTO _value;
  // ignore: unused_field
  final $Res Function(CurrencyDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? countryName = freezed,
    Object? countryPhoneCode = freezed,
    Object? isSupported = freezed,
    Object? currency = freezed,
    Object? currencyName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
abstract class _$CurrencyDTOCopyWith<$Res>
    implements $CurrencyDTOCopyWith<$Res> {
  factory _$CurrencyDTOCopyWith(
          _CurrencyDTO value, $Res Function(_CurrencyDTO) then) =
      __$CurrencyDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'name')
          String? countryName,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String? countryPhoneCode,
      @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? currency,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String? currencyName});
}

/// @nodoc
class __$CurrencyDTOCopyWithImpl<$Res> extends _$CurrencyDTOCopyWithImpl<$Res>
    implements _$CurrencyDTOCopyWith<$Res> {
  __$CurrencyDTOCopyWithImpl(
      _CurrencyDTO _value, $Res Function(_CurrencyDTO) _then)
      : super(_value, (v) => _then(v as _CurrencyDTO));

  @override
  _CurrencyDTO get _value => super._value as _CurrencyDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? countryName = freezed,
    Object? countryPhoneCode = freezed,
    Object? isSupported = freezed,
    Object? currency = freezed,
    Object? currencyName = freezed,
  }) {
    return _then(_CurrencyDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyDTO extends _CurrencyDTO {
  const _$_CurrencyDTO(
      {@JsonKey(includeIfNull: false)
          this.id,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'name')
          this.countryName,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          this.countryPhoneCode,
      @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
      @IntToBoolSerializer()
          this.isSupported = false,
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.currency,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          this.currencyName})
      : super._();

  factory _$_CurrencyDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CurrencyDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'name')
  final String? countryName;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
  final String? countryPhoneCode;
  @override
  @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
  @IntToBoolSerializer()
  final bool isSupported;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String? currency;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
  final String? currencyName;

  @override
  String toString() {
    return 'CurrencyDTO(id: $id, countryName: $countryName, countryPhoneCode: $countryPhoneCode, isSupported: $isSupported, currency: $currency, currencyName: $currencyName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrencyDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)) &&
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
                    .equals(other.currencyName, currencyName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(countryPhoneCode) ^
      const DeepCollectionEquality().hash(isSupported) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencyName);

  @JsonKey(ignore: true)
  @override
  _$CurrencyDTOCopyWith<_CurrencyDTO> get copyWith =>
      __$CurrencyDTOCopyWithImpl<_CurrencyDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CurrencyDTOToJson(this);
  }
}

abstract class _CurrencyDTO extends CurrencyDTO {
  const factory _CurrencyDTO(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'name')
          String? countryName,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String? countryPhoneCode,
      @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? currency,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String? currencyName}) = _$_CurrencyDTO;
  const _CurrencyDTO._() : super._();

  factory _CurrencyDTO.fromJson(Map<String, dynamic> json) =
      _$_CurrencyDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'name')
  String? get countryName => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
  String? get countryPhoneCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
  @IntToBoolSerializer()
  bool get isSupported => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  String? get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
  String? get currencyName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CurrencyDTOCopyWith<_CurrencyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
