// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required Country region,
      required Password passwordConfirmation,
      required OTPCode emailOTP,
      required User user,
      double passwordStrength = 0.0,
      bool isLoading = false,
      bool validate = false,
      bool isPasswordHidden = true,
      bool passwordMatches = false,
      Option<Either<Failure, Response?>?> status = const None()}) {
    return _AuthState(
      region: region,
      passwordConfirmation: passwordConfirmation,
      emailOTP: emailOTP,
      user: user,
      passwordStrength: passwordStrength,
      isLoading: isLoading,
      validate: validate,
      isPasswordHidden: isPasswordHidden,
      passwordMatches: passwordMatches,
      status: status,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  Country get region => throw _privateConstructorUsedError;
  Password get passwordConfirmation => throw _privateConstructorUsedError;
  OTPCode get emailOTP => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  double get passwordStrength => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isPasswordHidden => throw _privateConstructorUsedError;
  bool get passwordMatches => throw _privateConstructorUsedError;
  Option<Either<Failure, Response?>?> get status =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {Country region,
      Password passwordConfirmation,
      OTPCode emailOTP,
      User user,
      double passwordStrength,
      bool isLoading,
      bool validate,
      bool isPasswordHidden,
      bool passwordMatches,
      Option<Either<Failure, Response?>?> status});

  $CountryCopyWith<$Res> get region;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? region = freezed,
    Object? passwordConfirmation = freezed,
    Object? emailOTP = freezed,
    Object? user = freezed,
    Object? passwordStrength = freezed,
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? isPasswordHidden = freezed,
    Object? passwordMatches = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Country,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as Password,
      emailOTP: emailOTP == freezed
          ? _value.emailOTP
          : emailOTP // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      passwordStrength: passwordStrength == freezed
          ? _value.passwordStrength
          : passwordStrength // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordHidden: isPasswordHidden == freezed
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordMatches: passwordMatches == freezed
          ? _value.passwordMatches
          : passwordMatches // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Response?>?>,
    ));
  }

  @override
  $CountryCopyWith<$Res> get region {
    return $CountryCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value));
    });
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Country region,
      Password passwordConfirmation,
      OTPCode emailOTP,
      User user,
      double passwordStrength,
      bool isLoading,
      bool validate,
      bool isPasswordHidden,
      bool passwordMatches,
      Option<Either<Failure, Response?>?> status});

  @override
  $CountryCopyWith<$Res> get region;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? region = freezed,
    Object? passwordConfirmation = freezed,
    Object? emailOTP = freezed,
    Object? user = freezed,
    Object? passwordStrength = freezed,
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? isPasswordHidden = freezed,
    Object? passwordMatches = freezed,
    Object? status = freezed,
  }) {
    return _then(_AuthState(
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Country,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as Password,
      emailOTP: emailOTP == freezed
          ? _value.emailOTP
          : emailOTP // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      passwordStrength: passwordStrength == freezed
          ? _value.passwordStrength
          : passwordStrength // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordHidden: isPasswordHidden == freezed
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordMatches: passwordMatches == freezed
          ? _value.passwordMatches
          : passwordMatches // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Response?>?>,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {required this.region,
      required this.passwordConfirmation,
      required this.emailOTP,
      required this.user,
      this.passwordStrength = 0.0,
      this.isLoading = false,
      this.validate = false,
      this.isPasswordHidden = true,
      this.passwordMatches = false,
      this.status = const None()})
      : super._();

  @override
  final Country region;
  @override
  final Password passwordConfirmation;
  @override
  final OTPCode emailOTP;
  @override
  final User user;
  @JsonKey(defaultValue: 0.0)
  @override
  final double passwordStrength;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: true)
  @override
  final bool isPasswordHidden;
  @JsonKey(defaultValue: false)
  @override
  final bool passwordMatches;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Response?>?> status;

  @override
  String toString() {
    return 'AuthState(region: $region, passwordConfirmation: $passwordConfirmation, emailOTP: $emailOTP, user: $user, passwordStrength: $passwordStrength, isLoading: $isLoading, validate: $validate, isPasswordHidden: $isPasswordHidden, passwordMatches: $passwordMatches, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                const DeepCollectionEquality().equals(
                    other.passwordConfirmation, passwordConfirmation)) &&
            (identical(other.emailOTP, emailOTP) ||
                const DeepCollectionEquality()
                    .equals(other.emailOTP, emailOTP)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.passwordStrength, passwordStrength) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStrength, passwordStrength)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.isPasswordHidden, isPasswordHidden) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordHidden, isPasswordHidden)) &&
            (identical(other.passwordMatches, passwordMatches) ||
                const DeepCollectionEquality()
                    .equals(other.passwordMatches, passwordMatches)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(passwordConfirmation) ^
      const DeepCollectionEquality().hash(emailOTP) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(passwordStrength) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(isPasswordHidden) ^
      const DeepCollectionEquality().hash(passwordMatches) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {required Country region,
      required Password passwordConfirmation,
      required OTPCode emailOTP,
      required User user,
      double passwordStrength,
      bool isLoading,
      bool validate,
      bool isPasswordHidden,
      bool passwordMatches,
      Option<Either<Failure, Response?>?> status}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  Country get region => throw _privateConstructorUsedError;
  @override
  Password get passwordConfirmation => throw _privateConstructorUsedError;
  @override
  OTPCode get emailOTP => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  double get passwordStrength => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get validate => throw _privateConstructorUsedError;
  @override
  bool get isPasswordHidden => throw _privateConstructorUsedError;
  @override
  bool get passwordMatches => throw _privateConstructorUsedError;
  @override
  Option<Either<Failure, Response?>?> get status =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
