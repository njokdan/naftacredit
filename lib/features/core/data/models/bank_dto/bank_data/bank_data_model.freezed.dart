// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of bank_data_model.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankDataModel _$BankDataModelFromJson(Map<String, dynamic> json) {
  return _BankDataModel.fromJson(json);
}

/// @nodoc
class _$BankDataModelTearOff {
  const _$BankDataModelTearOff();

  _BankDataModel call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? code,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
          String? countryCode,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
          String? countryName,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) {
    return _BankDataModel(
      id: id,
      name: name,
      code: code,
      countryCode: countryCode,
      countryName: countryName,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  BankDataModel fromJson(Map<String, Object> json) {
    return BankDataModel.fromJson(json);
  }
}

/// @nodoc
const $BankDataModel = _$BankDataModelTearOff();

/// @nodoc
mixin _$BankDataModel {
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
  String? get countryName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDataModelCopyWith<BankDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDataModelCopyWith<$Res> {
  factory $BankDataModelCopyWith(
          BankDataModel value, $Res Function(BankDataModel) then) =
      _$BankDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? code,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
          String? countryCode,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
          String? countryName,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt});
}

/// @nodoc
class _$BankDataModelCopyWithImpl<$Res>
    implements $BankDataModelCopyWith<$Res> {
  _$BankDataModelCopyWithImpl(this._value, this._then);

  final BankDataModel _value;
  // ignore: unused_field
  final $Res Function(BankDataModel) _then;

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
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$BankDataModelCopyWith<$Res>
    implements $BankDataModelCopyWith<$Res> {
  factory _$BankDataModelCopyWith(
          _BankDataModel value, $Res Function(_BankDataModel) then) =
      __$BankDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? code,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
          String? countryCode,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
          String? countryName,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt});
}

/// @nodoc
class __$BankDataModelCopyWithImpl<$Res>
    extends _$BankDataModelCopyWithImpl<$Res>
    implements _$BankDataModelCopyWith<$Res> {
  __$BankDataModelCopyWithImpl(
      _BankDataModel _value, $Res Function(_BankDataModel) _then)
      : super(_value, (v) => _then(v as _BankDataModel));

  @override
  _BankDataModel get _value => super._value as _BankDataModel;

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
    return _then(_BankDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_BankDataModel extends _BankDataModel {
  const _$_BankDataModel(
      {@JsonKey(includeIfNull: false)
          this.id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.name,
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.code,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
          this.countryCode,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
          this.countryName,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_BankDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BankDataModelFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String? name;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String? code;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
  final String? countryCode;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
  final String? countryName;
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
    return 'BankDataModel(id: $id, name: $name, code: $code, countryCode: $countryCode, countryName: $countryName, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BankDataModel &&
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
  _$BankDataModelCopyWith<_BankDataModel> get copyWith =>
      __$BankDataModelCopyWithImpl<_BankDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BankDataModelToJson(this);
  }
}

abstract class _BankDataModel extends BankDataModel {
  const factory _BankDataModel(
      {@JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? name,
      @JsonKey(includeIfNull: false, defaultValue: '')
          String? code,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
          String? countryCode,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
          String? countryName,
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime? deletedAt}) = _$_BankDataModel;
  const _BankDataModel._() : super._();

  factory _BankDataModel.fromJson(Map<String, dynamic> json) =
      _$_BankDataModel.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '')
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
  String? get countryCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
  String? get countryName => throw _privateConstructorUsedError;
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
  _$BankDataModelCopyWith<_BankDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
