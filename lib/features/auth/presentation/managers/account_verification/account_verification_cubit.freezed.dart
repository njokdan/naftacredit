// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'account_verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountVerificationStateTearOff {
  const _$AccountVerificationStateTearOff();

  _AccountVerificationState call(
      {required User? user,
      required BasicTextField<int?> bvn,
      required OTPCode code,
      required BasicTextField<String?> street,
      bool isLoading = false,
      bool validate = false,
      bool isImageDocument = false,
      DocumentMimeType? mimeType,
      required BasicTextField<String?> documentName,
      File? document,
      ProvinceState? selectedState,
      Country? selectedCountry,
      Map<String, dynamic>? documentType =
          AccountVerificationState.kdefaultType,
      KtList<Country> countries = const KtList.empty(),
      KtList<ProvinceState> states = const KtList.empty(),
      Option<Either<Failure, Response?>?> status = const None()}) {
    return _AccountVerificationState(
      user: user,
      bvn: bvn,
      code: code,
      street: street,
      isLoading: isLoading,
      validate: validate,
      isImageDocument: isImageDocument,
      mimeType: mimeType,
      documentName: documentName,
      document: document,
      selectedState: selectedState,
      selectedCountry: selectedCountry,
      documentType: documentType,
      countries: countries,
      states: states,
      status: status,
    );
  }
}

/// @nodoc
const $AccountVerificationState = _$AccountVerificationStateTearOff();

/// @nodoc
mixin _$AccountVerificationState {
  User? get user => throw _privateConstructorUsedError;
  BasicTextField<int?> get bvn => throw _privateConstructorUsedError;
  OTPCode get code => throw _privateConstructorUsedError;
  BasicTextField<String?> get street => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  bool get isImageDocument => throw _privateConstructorUsedError;
  DocumentMimeType? get mimeType => throw _privateConstructorUsedError;
  BasicTextField<String?> get documentName =>
      throw _privateConstructorUsedError;
  File? get document => throw _privateConstructorUsedError;
  ProvinceState? get selectedState => throw _privateConstructorUsedError;
  Country? get selectedCountry => throw _privateConstructorUsedError;
  Map<String, dynamic>? get documentType => throw _privateConstructorUsedError;
  KtList<Country> get countries => throw _privateConstructorUsedError;
  KtList<ProvinceState> get states => throw _privateConstructorUsedError;
  Option<Either<Failure, Response?>?> get status =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountVerificationStateCopyWith<AccountVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountVerificationStateCopyWith<$Res> {
  factory $AccountVerificationStateCopyWith(AccountVerificationState value,
          $Res Function(AccountVerificationState) then) =
      _$AccountVerificationStateCopyWithImpl<$Res>;
  $Res call(
      {User? user,
      BasicTextField<int?> bvn,
      OTPCode code,
      BasicTextField<String?> street,
      bool isLoading,
      bool validate,
      bool isImageDocument,
      DocumentMimeType? mimeType,
      BasicTextField<String?> documentName,
      File? document,
      ProvinceState? selectedState,
      Country? selectedCountry,
      Map<String, dynamic>? documentType,
      KtList<Country> countries,
      KtList<ProvinceState> states,
      Option<Either<Failure, Response?>?> status});

  $UserCopyWith<$Res>? get user;
  $ProvinceStateCopyWith<$Res>? get selectedState;
  $CountryCopyWith<$Res>? get selectedCountry;
}

/// @nodoc
class _$AccountVerificationStateCopyWithImpl<$Res>
    implements $AccountVerificationStateCopyWith<$Res> {
  _$AccountVerificationStateCopyWithImpl(this._value, this._then);

  final AccountVerificationState _value;
  // ignore: unused_field
  final $Res Function(AccountVerificationState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? bvn = freezed,
    Object? code = freezed,
    Object? street = freezed,
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? isImageDocument = freezed,
    Object? mimeType = freezed,
    Object? documentName = freezed,
    Object? document = freezed,
    Object? selectedState = freezed,
    Object? selectedCountry = freezed,
    Object? documentType = freezed,
    Object? countries = freezed,
    Object? states = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      bvn: bvn == freezed
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageDocument: isImageDocument == freezed
          ? _value.isImageDocument
          : isImageDocument // ignore: cast_nullable_to_non_nullable
              as bool,
      mimeType: mimeType == freezed
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as DocumentMimeType?,
      documentName: documentName == freezed
          ? _value.documentName
          : documentName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      document: document == freezed
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as File?,
      selectedState: selectedState == freezed
          ? _value.selectedState
          : selectedState // ignore: cast_nullable_to_non_nullable
              as ProvinceState?,
      selectedCountry: selectedCountry == freezed
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
      documentType: documentType == freezed
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as KtList<Country>,
      states: states == freezed
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as KtList<ProvinceState>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Response?>?>,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $ProvinceStateCopyWith<$Res>? get selectedState {
    if (_value.selectedState == null) {
      return null;
    }

    return $ProvinceStateCopyWith<$Res>(_value.selectedState!, (value) {
      return _then(_value.copyWith(selectedState: value));
    });
  }

  @override
  $CountryCopyWith<$Res>? get selectedCountry {
    if (_value.selectedCountry == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.selectedCountry!, (value) {
      return _then(_value.copyWith(selectedCountry: value));
    });
  }
}

/// @nodoc
abstract class _$AccountVerificationStateCopyWith<$Res>
    implements $AccountVerificationStateCopyWith<$Res> {
  factory _$AccountVerificationStateCopyWith(_AccountVerificationState value,
          $Res Function(_AccountVerificationState) then) =
      __$AccountVerificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User? user,
      BasicTextField<int?> bvn,
      OTPCode code,
      BasicTextField<String?> street,
      bool isLoading,
      bool validate,
      bool isImageDocument,
      DocumentMimeType? mimeType,
      BasicTextField<String?> documentName,
      File? document,
      ProvinceState? selectedState,
      Country? selectedCountry,
      Map<String, dynamic>? documentType,
      KtList<Country> countries,
      KtList<ProvinceState> states,
      Option<Either<Failure, Response?>?> status});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ProvinceStateCopyWith<$Res>? get selectedState;
  @override
  $CountryCopyWith<$Res>? get selectedCountry;
}

/// @nodoc
class __$AccountVerificationStateCopyWithImpl<$Res>
    extends _$AccountVerificationStateCopyWithImpl<$Res>
    implements _$AccountVerificationStateCopyWith<$Res> {
  __$AccountVerificationStateCopyWithImpl(_AccountVerificationState _value,
      $Res Function(_AccountVerificationState) _then)
      : super(_value, (v) => _then(v as _AccountVerificationState));

  @override
  _AccountVerificationState get _value =>
      super._value as _AccountVerificationState;

  @override
  $Res call({
    Object? user = freezed,
    Object? bvn = freezed,
    Object? code = freezed,
    Object? street = freezed,
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? isImageDocument = freezed,
    Object? mimeType = freezed,
    Object? documentName = freezed,
    Object? document = freezed,
    Object? selectedState = freezed,
    Object? selectedCountry = freezed,
    Object? documentType = freezed,
    Object? countries = freezed,
    Object? states = freezed,
    Object? status = freezed,
  }) {
    return _then(_AccountVerificationState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      bvn: bvn == freezed
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as BasicTextField<int?>,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as OTPCode,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageDocument: isImageDocument == freezed
          ? _value.isImageDocument
          : isImageDocument // ignore: cast_nullable_to_non_nullable
              as bool,
      mimeType: mimeType == freezed
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as DocumentMimeType?,
      documentName: documentName == freezed
          ? _value.documentName
          : documentName // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      document: document == freezed
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as File?,
      selectedState: selectedState == freezed
          ? _value.selectedState
          : selectedState // ignore: cast_nullable_to_non_nullable
              as ProvinceState?,
      selectedCountry: selectedCountry == freezed
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
      documentType: documentType == freezed
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as KtList<Country>,
      states: states == freezed
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as KtList<ProvinceState>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Response?>?>,
    ));
  }
}

/// @nodoc

class _$_AccountVerificationState implements _AccountVerificationState {
  const _$_AccountVerificationState(
      {required this.user,
      required this.bvn,
      required this.code,
      required this.street,
      this.isLoading = false,
      this.validate = false,
      this.isImageDocument = false,
      this.mimeType,
      required this.documentName,
      this.document,
      this.selectedState,
      this.selectedCountry,
      this.documentType = AccountVerificationState.kdefaultType,
      this.countries = const KtList.empty(),
      this.states = const KtList.empty(),
      this.status = const None()});

  @override
  final User? user;
  @override
  final BasicTextField<int?> bvn;
  @override
  final OTPCode code;
  @override
  final BasicTextField<String?> street;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: false)
  @override
  final bool isImageDocument;
  @override
  final DocumentMimeType? mimeType;
  @override
  final BasicTextField<String?> documentName;
  @override
  final File? document;
  @override
  final ProvinceState? selectedState;
  @override
  final Country? selectedCountry;
  @JsonKey(defaultValue: AccountVerificationState.kdefaultType)
  @override
  final Map<String, dynamic>? documentType;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Country> countries;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<ProvinceState> states;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Response?>?> status;

  @override
  String toString() {
    return 'AccountVerificationState(user: $user, bvn: $bvn, code: $code, street: $street, isLoading: $isLoading, validate: $validate, isImageDocument: $isImageDocument, mimeType: $mimeType, documentName: $documentName, document: $document, selectedState: $selectedState, selectedCountry: $selectedCountry, documentType: $documentType, countries: $countries, states: $states, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountVerificationState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.bvn, bvn) ||
                const DeepCollectionEquality().equals(other.bvn, bvn)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.isImageDocument, isImageDocument) ||
                const DeepCollectionEquality()
                    .equals(other.isImageDocument, isImageDocument)) &&
            (identical(other.mimeType, mimeType) ||
                const DeepCollectionEquality()
                    .equals(other.mimeType, mimeType)) &&
            (identical(other.documentName, documentName) ||
                const DeepCollectionEquality()
                    .equals(other.documentName, documentName)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)) &&
            (identical(other.selectedState, selectedState) ||
                const DeepCollectionEquality()
                    .equals(other.selectedState, selectedState)) &&
            (identical(other.selectedCountry, selectedCountry) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCountry, selectedCountry)) &&
            (identical(other.documentType, documentType) ||
                const DeepCollectionEquality()
                    .equals(other.documentType, documentType)) &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(bvn) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(isImageDocument) ^
      const DeepCollectionEquality().hash(mimeType) ^
      const DeepCollectionEquality().hash(documentName) ^
      const DeepCollectionEquality().hash(document) ^
      const DeepCollectionEquality().hash(selectedState) ^
      const DeepCollectionEquality().hash(selectedCountry) ^
      const DeepCollectionEquality().hash(documentType) ^
      const DeepCollectionEquality().hash(countries) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$AccountVerificationStateCopyWith<_AccountVerificationState> get copyWith =>
      __$AccountVerificationStateCopyWithImpl<_AccountVerificationState>(
          this, _$identity);
}

abstract class _AccountVerificationState implements AccountVerificationState {
  const factory _AccountVerificationState(
          {required User? user,
          required BasicTextField<int?> bvn,
          required OTPCode code,
          required BasicTextField<String?> street,
          bool isLoading,
          bool validate,
          bool isImageDocument,
          DocumentMimeType? mimeType,
          required BasicTextField<String?> documentName,
          File? document,
          ProvinceState? selectedState,
          Country? selectedCountry,
          Map<String, dynamic>? documentType,
          KtList<Country> countries,
          KtList<ProvinceState> states,
          Option<Either<Failure, Response?>?> status}) =
      _$_AccountVerificationState;

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  BasicTextField<int?> get bvn => throw _privateConstructorUsedError;
  @override
  OTPCode get code => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get street => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get validate => throw _privateConstructorUsedError;
  @override
  bool get isImageDocument => throw _privateConstructorUsedError;
  @override
  DocumentMimeType? get mimeType => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get documentName =>
      throw _privateConstructorUsedError;
  @override
  File? get document => throw _privateConstructorUsedError;
  @override
  ProvinceState? get selectedState => throw _privateConstructorUsedError;
  @override
  Country? get selectedCountry => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get documentType => throw _privateConstructorUsedError;
  @override
  KtList<Country> get countries => throw _privateConstructorUsedError;
  @override
  KtList<ProvinceState> get states => throw _privateConstructorUsedError;
  @override
  Option<Either<Failure, Response?>?> get status =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountVerificationStateCopyWith<_AccountVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
