// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of bank.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BankTearOff {
  const _$BankTearOff();

  _Bank call(
      {required UniqueId<String?> id,
      required BasicTextField<String?> name,
      required BasicTextField<String?> code,
      required BasicTextField<String?> countryCode,
      required BasicTextField<String?> countryName,
      DateTime? updatedAt,
      DateTime? deletedAt}) {
    return _Bank(
      id: id,
      name: name,
      code: code,
      countryCode: countryCode,
      countryName: countryName,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
const $Bank = _$BankTearOff();

/// @nodoc
mixin _$Bank {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  BasicTextField<String?> get name => throw _privateConstructorUsedError;
  BasicTextField<String?> get code => throw _privateConstructorUsedError;
  BasicTextField<String?> get countryCode => throw _privateConstructorUsedError;
  BasicTextField<String?> get countryName => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BankCopyWith<Bank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCopyWith<$Res> {
  factory $BankCopyWith(Bank value, $Res Function(Bank) then) =
      _$BankCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      BasicTextField<String?> name,
      BasicTextField<String?> code,
      BasicTextField<String?> countryCode,
      BasicTextField<String?> countryName,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$BankCopyWithImpl<$Res> implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._value, this._then);

  final Bank _value;
  // ignore: unused_field
  final $Res Function(Bank) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? countryCode = freezed,
    Object? countryName = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
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
abstract class _$BankCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$BankCopyWith(_Bank value, $Res Function(_Bank) then) =
      __$BankCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      BasicTextField<String?> name,
      BasicTextField<String?> code,
      BasicTextField<String?> countryCode,
      BasicTextField<String?> countryName,
      DateTime? updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$BankCopyWithImpl<$Res> extends _$BankCopyWithImpl<$Res>
    implements _$BankCopyWith<$Res> {
  __$BankCopyWithImpl(_Bank _value, $Res Function(_Bank) _then)
      : super(_value, (v) => _then(v as _Bank));

  @override
  _Bank get _value => super._value as _Bank;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? countryCode = freezed,
    Object? countryName = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_Bank(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
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

class _$_Bank extends _Bank {
  const _$_Bank(
      {required this.id,
      required this.name,
      required this.code,
      required this.countryCode,
      required this.countryName,
      this.updatedAt,
      this.deletedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final BasicTextField<String?> name;
  @override
  final BasicTextField<String?> code;
  @override
  final BasicTextField<String?> countryCode;
  @override
  final BasicTextField<String?> countryName;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Bank(id: $id, name: $name, code: $code, countryCode: $countryCode, countryName: $countryName, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Bank &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)) &&
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
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$BankCopyWith<_Bank> get copyWith =>
      __$BankCopyWithImpl<_Bank>(this, _$identity);
}

abstract class _Bank extends Bank {
  const factory _Bank(
      {required UniqueId<String?> id,
      required BasicTextField<String?> name,
      required BasicTextField<String?> code,
      required BasicTextField<String?> countryCode,
      required BasicTextField<String?> countryName,
      DateTime? updatedAt,
      DateTime? deletedAt}) = _$_Bank;
  const _Bank._() : super._();

  @override
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get name => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get code => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get countryCode => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get countryName => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BankCopyWith<_Bank> get copyWith => throw _privateConstructorUsedError;
}
