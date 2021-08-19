// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of dynamic_response_object.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DynamicResponseObject _$DynamicResponseObjectFromJson(
    Map<String, dynamic> json) {
  return _DynamicResponseObject.fromJson(json);
}

/// @nodoc
class _$DynamicResponseObjectTearOff {
  const _$DynamicResponseObjectTearOff();

  _DynamicResponseObject call(
      @DynamicResponseSerializer() DynamicResponse response) {
    return _DynamicResponseObject(
      response,
    );
  }

  DynamicResponseObject fromJson(Map<String, Object> json) {
    return DynamicResponseObject.fromJson(json);
  }
}

/// @nodoc
const $DynamicResponseObject = _$DynamicResponseObjectTearOff();

/// @nodoc
mixin _$DynamicResponseObject {
  @DynamicResponseSerializer()
  DynamicResponse get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicResponseObjectCopyWith<DynamicResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicResponseObjectCopyWith<$Res> {
  factory $DynamicResponseObjectCopyWith(DynamicResponseObject value,
          $Res Function(DynamicResponseObject) then) =
      _$DynamicResponseObjectCopyWithImpl<$Res>;
  $Res call({@DynamicResponseSerializer() DynamicResponse response});

  $DynamicResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$DynamicResponseObjectCopyWithImpl<$Res>
    implements $DynamicResponseObjectCopyWith<$Res> {
  _$DynamicResponseObjectCopyWithImpl(this._value, this._then);

  final DynamicResponseObject _value;
  // ignore: unused_field
  final $Res Function(DynamicResponseObject) _then;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as DynamicResponse,
    ));
  }

  @override
  $DynamicResponseCopyWith<$Res> get response {
    return $DynamicResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$DynamicResponseObjectCopyWith<$Res>
    implements $DynamicResponseObjectCopyWith<$Res> {
  factory _$DynamicResponseObjectCopyWith(_DynamicResponseObject value,
          $Res Function(_DynamicResponseObject) then) =
      __$DynamicResponseObjectCopyWithImpl<$Res>;
  @override
  $Res call({@DynamicResponseSerializer() DynamicResponse response});

  @override
  $DynamicResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$DynamicResponseObjectCopyWithImpl<$Res>
    extends _$DynamicResponseObjectCopyWithImpl<$Res>
    implements _$DynamicResponseObjectCopyWith<$Res> {
  __$DynamicResponseObjectCopyWithImpl(_DynamicResponseObject _value,
      $Res Function(_DynamicResponseObject) _then)
      : super(_value, (v) => _then(v as _DynamicResponseObject));

  @override
  _DynamicResponseObject get _value => super._value as _DynamicResponseObject;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_DynamicResponseObject(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as DynamicResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DynamicResponseObject extends _DynamicResponseObject {
  const _$_DynamicResponseObject(@DynamicResponseSerializer() this.response)
      : super._();

  factory _$_DynamicResponseObject.fromJson(Map<String, dynamic> json) =>
      _$_$_DynamicResponseObjectFromJson(json);

  @override
  @DynamicResponseSerializer()
  final DynamicResponse response;

  @override
  String toString() {
    return 'DynamicResponseObject(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DynamicResponseObject &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$DynamicResponseObjectCopyWith<_DynamicResponseObject> get copyWith =>
      __$DynamicResponseObjectCopyWithImpl<_DynamicResponseObject>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DynamicResponseObjectToJson(this);
  }
}

abstract class _DynamicResponseObject extends DynamicResponseObject {
  const factory _DynamicResponseObject(
          @DynamicResponseSerializer() DynamicResponse response) =
      _$_DynamicResponseObject;
  const _DynamicResponseObject._() : super._();

  factory _DynamicResponseObject.fromJson(Map<String, dynamic> json) =
      _$_DynamicResponseObject.fromJson;

  @override
  @DynamicResponseSerializer()
  DynamicResponse get response => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DynamicResponseObjectCopyWith<_DynamicResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}
