// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InfoResponseTearOff {
  const _$InfoResponseTearOff();

  _InfoResponse call(
      {String? code,
      String? error,
      required String message,
      String? details,
      bool popRoute = true,
      bool show = true}) {
    return _InfoResponse(
      code: code,
      error: error,
      message: message,
      details: details,
      popRoute: popRoute,
      show: show,
    );
  }
}

/// @nodoc
const $InfoResponse = _$InfoResponseTearOff();

/// @nodoc
mixin _$InfoResponse {
  String? get code => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  bool get popRoute => throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfoResponseCopyWith<InfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoResponseCopyWith<$Res> {
  factory $InfoResponseCopyWith(
          InfoResponse value, $Res Function(InfoResponse) then) =
      _$InfoResponseCopyWithImpl<$Res>;
  $Res call(
      {String? code,
      String? error,
      String message,
      String? details,
      bool popRoute,
      bool show});
}

/// @nodoc
class _$InfoResponseCopyWithImpl<$Res> implements $InfoResponseCopyWith<$Res> {
  _$InfoResponseCopyWithImpl(this._value, this._then);

  final InfoResponse _value;
  // ignore: unused_field
  final $Res Function(InfoResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? popRoute = freezed,
    Object? show = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      popRoute: popRoute == freezed
          ? _value.popRoute
          : popRoute // ignore: cast_nullable_to_non_nullable
              as bool,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InfoResponseCopyWith<$Res>
    implements $InfoResponseCopyWith<$Res> {
  factory _$InfoResponseCopyWith(
          _InfoResponse value, $Res Function(_InfoResponse) then) =
      __$InfoResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? code,
      String? error,
      String message,
      String? details,
      bool popRoute,
      bool show});
}

/// @nodoc
class __$InfoResponseCopyWithImpl<$Res> extends _$InfoResponseCopyWithImpl<$Res>
    implements _$InfoResponseCopyWith<$Res> {
  __$InfoResponseCopyWithImpl(
      _InfoResponse _value, $Res Function(_InfoResponse) _then)
      : super(_value, (v) => _then(v as _InfoResponse));

  @override
  _InfoResponse get _value => super._value as _InfoResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? details = freezed,
    Object? popRoute = freezed,
    Object? show = freezed,
  }) {
    return _then(_InfoResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      popRoute: popRoute == freezed
          ? _value.popRoute
          : popRoute // ignore: cast_nullable_to_non_nullable
              as bool,
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InfoResponse extends _InfoResponse {
  const _$_InfoResponse(
      {this.code,
      this.error,
      required this.message,
      this.details,
      this.popRoute = true,
      this.show = true})
      : super._();

  @override
  final String? code;
  @override
  final String? error;
  @override
  final String message;
  @override
  final String? details;
  @JsonKey(defaultValue: true)
  @override
  final bool popRoute;
  @JsonKey(defaultValue: true)
  @override
  final bool show;

  @override
  String toString() {
    return 'InfoResponse(code: $code, error: $error, message: $message, details: $details, popRoute: $popRoute, show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.popRoute, popRoute) ||
                const DeepCollectionEquality()
                    .equals(other.popRoute, popRoute)) &&
            (identical(other.show, show) ||
                const DeepCollectionEquality().equals(other.show, show)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(popRoute) ^
      const DeepCollectionEquality().hash(show);

  @JsonKey(ignore: true)
  @override
  _$InfoResponseCopyWith<_InfoResponse> get copyWith =>
      __$InfoResponseCopyWithImpl<_InfoResponse>(this, _$identity);
}

abstract class _InfoResponse extends InfoResponse {
  const factory _InfoResponse(
      {String? code,
      String? error,
      required String message,
      String? details,
      bool popRoute,
      bool show}) = _$_InfoResponse;
  const _InfoResponse._() : super._();

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String? get details => throw _privateConstructorUsedError;
  @override
  bool get popRoute => throw _privateConstructorUsedError;
  @override
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InfoResponseCopyWith<_InfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
