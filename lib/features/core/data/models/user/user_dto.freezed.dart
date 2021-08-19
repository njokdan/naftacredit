// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of user_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

  _UserDTO call(
      {@JsonKey(ignore: true)
          int? key,
      @JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          double? balance,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          String? firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          String? lastName,
      @JsonKey(includeIfNull: false, name: 'full_name')
          String? fullName,
      @JsonKey(includeIfNull: false)
          String? email,
      @JsonKey(includeIfNull: false)
          String? gender,
      @JsonKey(includeIfNull: false, name: 'date_of_birth')
          String? dateOfBirth,
      @JsonKey(includeIfNull: false)
          String? phone,
      @JsonKey(includeIfNull: false, name: 'register_via')
          String? provider,
      @JsonKey(includeIfNull: false)
          String? password,
      @JsonKey(includeIfNull: false)
          String? image,
      @JsonKey(includeIfNull: false)
          String? street,
      @JsonKey(includeIfNull: false)
          String? state,
      @JsonKey(includeIfNull: false)
          String? country,
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool? isEmailVerified,
      @JsonKey(includeIfNull: false, name: 'is_verified', defaultValue: false)
          bool? isVerified,
      @JsonKey(includeIfNull: false, name: 'locked_at')
          String? lockedAt,
      @JsonKey(includeIfNull: false, name: 'created_at')
          String? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
          String? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
          String? deletedAt}) {
    return _UserDTO(
      key: key,
      id: id,
      balance: balance,
      token: token,
      firstName: firstName,
      lastName: lastName,
      fullName: fullName,
      email: email,
      gender: gender,
      dateOfBirth: dateOfBirth,
      phone: phone,
      provider: provider,
      password: password,
      image: image,
      street: street,
      state: state,
      country: country,
      isEmailVerified: isEmailVerified,
      isVerified: isVerified,
      lockedAt: lockedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

  UserDTO fromJson(Map<String, Object> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  @JsonKey(ignore: true)
  int? get key => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  double? get balance => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'register_via')
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get street => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'is_verified', defaultValue: false)
  bool? get isVerified => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'locked_at')
  String? get lockedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true)
          int? key,
      @JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          double? balance,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          String? firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          String? lastName,
      @JsonKey(includeIfNull: false, name: 'full_name')
          String? fullName,
      @JsonKey(includeIfNull: false)
          String? email,
      @JsonKey(includeIfNull: false)
          String? gender,
      @JsonKey(includeIfNull: false, name: 'date_of_birth')
          String? dateOfBirth,
      @JsonKey(includeIfNull: false)
          String? phone,
      @JsonKey(includeIfNull: false, name: 'register_via')
          String? provider,
      @JsonKey(includeIfNull: false)
          String? password,
      @JsonKey(includeIfNull: false)
          String? image,
      @JsonKey(includeIfNull: false)
          String? street,
      @JsonKey(includeIfNull: false)
          String? state,
      @JsonKey(includeIfNull: false)
          String? country,
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool? isEmailVerified,
      @JsonKey(includeIfNull: false, name: 'is_verified', defaultValue: false)
          bool? isVerified,
      @JsonKey(includeIfNull: false, name: 'locked_at')
          String? lockedAt,
      @JsonKey(includeIfNull: false, name: 'created_at')
          String? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
          String? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
          String? deletedAt});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? id = freezed,
    Object? balance = freezed,
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? phone = freezed,
    Object? provider = freezed,
    Object? password = freezed,
    Object? image = freezed,
    Object? street = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? isEmailVerified = freezed,
    Object? isVerified = freezed,
    Object? lockedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      lockedAt: lockedAt == freezed
          ? _value.lockedAt
          : lockedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true)
          int? key,
      @JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          double? balance,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          String? firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          String? lastName,
      @JsonKey(includeIfNull: false, name: 'full_name')
          String? fullName,
      @JsonKey(includeIfNull: false)
          String? email,
      @JsonKey(includeIfNull: false)
          String? gender,
      @JsonKey(includeIfNull: false, name: 'date_of_birth')
          String? dateOfBirth,
      @JsonKey(includeIfNull: false)
          String? phone,
      @JsonKey(includeIfNull: false, name: 'register_via')
          String? provider,
      @JsonKey(includeIfNull: false)
          String? password,
      @JsonKey(includeIfNull: false)
          String? image,
      @JsonKey(includeIfNull: false)
          String? street,
      @JsonKey(includeIfNull: false)
          String? state,
      @JsonKey(includeIfNull: false)
          String? country,
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool? isEmailVerified,
      @JsonKey(includeIfNull: false, name: 'is_verified', defaultValue: false)
          bool? isVerified,
      @JsonKey(includeIfNull: false, name: 'locked_at')
          String? lockedAt,
      @JsonKey(includeIfNull: false, name: 'created_at')
          String? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
          String? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
          String? deletedAt});
}

/// @nodoc
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

  @override
  $Res call({
    Object? key = freezed,
    Object? id = freezed,
    Object? balance = freezed,
    Object? token = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? phone = freezed,
    Object? provider = freezed,
    Object? password = freezed,
    Object? image = freezed,
    Object? street = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? isEmailVerified = freezed,
    Object? isVerified = freezed,
    Object? lockedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_UserDTO(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      lockedAt: lockedAt == freezed
          ? _value.lockedAt
          : lockedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: deletedAt == freezed
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {@JsonKey(ignore: true)
          this.key,
      @JsonKey(includeIfNull: false)
          this.id,
      @JsonKey(includeIfNull: false)
          this.balance,
      @JsonKey(includeIfNull: false)
          this.token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          this.firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          this.lastName,
      @JsonKey(includeIfNull: false, name: 'full_name')
          this.fullName,
      @JsonKey(includeIfNull: false)
          this.email,
      @JsonKey(includeIfNull: false)
          this.gender,
      @JsonKey(includeIfNull: false, name: 'date_of_birth')
          this.dateOfBirth,
      @JsonKey(includeIfNull: false)
          this.phone,
      @JsonKey(includeIfNull: false, name: 'register_via')
          this.provider,
      @JsonKey(includeIfNull: false)
          this.password,
      @JsonKey(includeIfNull: false)
          this.image,
      @JsonKey(includeIfNull: false)
          this.street,
      @JsonKey(includeIfNull: false)
          this.state,
      @JsonKey(includeIfNull: false)
          this.country,
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          this.isEmailVerified,
      @JsonKey(includeIfNull: false, name: 'is_verified', defaultValue: false)
          this.isVerified,
      @JsonKey(includeIfNull: false, name: 'locked_at')
          this.lockedAt,
      @JsonKey(includeIfNull: false, name: 'created_at')
          this.createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
          this.updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
          this.deletedAt})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final int? key;
  @override
  @JsonKey(includeIfNull: false)
  final String? id;
  @override
  @JsonKey(includeIfNull: false)
  final double? balance;
  @override
  @JsonKey(includeIfNull: false)
  final String? token;
  @override
  @JsonKey(includeIfNull: false, name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(includeIfNull: false, name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(includeIfNull: false, name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(includeIfNull: false)
  final String? email;
  @override
  @JsonKey(includeIfNull: false)
  final String? gender;
  @override
  @JsonKey(includeIfNull: false, name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  @JsonKey(includeIfNull: false)
  final String? phone;
  @override
  @JsonKey(includeIfNull: false, name: 'register_via')
  final String? provider;
  @override
  @JsonKey(includeIfNull: false)
  final String? password;
  @override
  @JsonKey(includeIfNull: false)
  final String? image;
  @override
  @JsonKey(includeIfNull: false)
  final String? street;
  @override
  @JsonKey(includeIfNull: false)
  final String? state;
  @override
  @JsonKey(includeIfNull: false)
  final String? country;
  @override
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  final bool? isEmailVerified;
  @override
  @JsonKey(includeIfNull: false, name: 'is_verified', defaultValue: false)
  final bool? isVerified;
  @override
  @JsonKey(includeIfNull: false, name: 'locked_at')
  final String? lockedAt;
  @override
  @JsonKey(includeIfNull: false, name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(includeIfNull: false, name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  final String? deletedAt;

  @override
  String toString() {
    return 'UserDTO(key: $key, id: $id, balance: $balance, token: $token, firstName: $firstName, lastName: $lastName, fullName: $fullName, email: $email, gender: $gender, dateOfBirth: $dateOfBirth, phone: $phone, provider: $provider, password: $password, image: $image, street: $street, state: $state, country: $country, isEmailVerified: $isEmailVerified, isVerified: $isVerified, lockedAt: $lockedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDTO &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isVerified, isVerified)) &&
            (identical(other.lockedAt, lockedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lockedAt, lockedAt)) &&
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
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(isVerified) ^
      const DeepCollectionEquality().hash(lockedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDTOToJson(this);
  }
}

abstract class _UserDTO extends UserDTO {
  const factory _UserDTO(
      {@JsonKey(ignore: true)
          int? key,
      @JsonKey(includeIfNull: false)
          String? id,
      @JsonKey(includeIfNull: false)
          double? balance,
      @JsonKey(includeIfNull: false)
          String? token,
      @JsonKey(includeIfNull: false, name: 'first_name')
          String? firstName,
      @JsonKey(includeIfNull: false, name: 'last_name')
          String? lastName,
      @JsonKey(includeIfNull: false, name: 'full_name')
          String? fullName,
      @JsonKey(includeIfNull: false)
          String? email,
      @JsonKey(includeIfNull: false)
          String? gender,
      @JsonKey(includeIfNull: false, name: 'date_of_birth')
          String? dateOfBirth,
      @JsonKey(includeIfNull: false)
          String? phone,
      @JsonKey(includeIfNull: false, name: 'register_via')
          String? provider,
      @JsonKey(includeIfNull: false)
          String? password,
      @JsonKey(includeIfNull: false)
          String? image,
      @JsonKey(includeIfNull: false)
          String? street,
      @JsonKey(includeIfNull: false)
          String? state,
      @JsonKey(includeIfNull: false)
          String? country,
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool? isEmailVerified,
      @JsonKey(includeIfNull: false, name: 'is_verified', defaultValue: false)
          bool? isVerified,
      @JsonKey(includeIfNull: false, name: 'locked_at')
          String? lockedAt,
      @JsonKey(includeIfNull: false, name: 'created_at')
          String? createdAt,
      @JsonKey(includeIfNull: false, name: 'updated_at')
          String? updatedAt,
      @JsonKey(includeIfNull: false, name: 'deleted_at')
          String? deletedAt}) = _$_UserDTO;
  const _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  int? get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  double? get balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get gender => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'register_via')
  String? get provider => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get street => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get state => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'is_verified', defaultValue: false)
  bool? get isVerified => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'locked_at')
  String? get lockedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
