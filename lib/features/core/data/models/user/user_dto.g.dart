// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$_$_UserDTOFromJson(Map<String, dynamic> json) {
  return _$_UserDTO(
    id: json['id'] as String?,
    balance: (json['balance'] as num?)?.toDouble(),
    token: json['token'] as String?,
    firstName: json['first_name'] as String?,
    lastName: json['last_name'] as String?,
    fullName: json['full_name'] as String?,
    email: json['email'] as String?,
    gender: json['gender'] as String?,
    dateOfBirth: json['date_of_birth'] as String?,
    phone: json['phone'] as String?,
    provider: json['register_via'] as String?,
    password: json['password'] as String?,
    image: json['image'] as String?,
    street: json['street'] as String?,
    state: json['state'] as String?,
    country: json['country'] as String?,
    isEmailVerified: UserDTO.isEmailVerifiedFromJson(json['email_verified_at']),
    isVerified: json['is_verified'] as bool? ?? false,
    lockedAt: json['locked_at'] as String?,
    createdAt: json['created_at'] as String?,
    updatedAt: json['updated_at'] as String?,
    deletedAt: json['deleted_at'] as String?,
  );
}

Map<String, dynamic> _$_$_UserDTOToJson(_$_UserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('balance', instance.balance);
  writeNotNull('token', instance.token);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('full_name', instance.fullName);
  writeNotNull('email', instance.email);
  writeNotNull('gender', instance.gender);
  writeNotNull('date_of_birth', instance.dateOfBirth);
  writeNotNull('phone', instance.phone);
  writeNotNull('register_via', instance.provider);
  writeNotNull('password', instance.password);
  writeNotNull('image', instance.image);
  writeNotNull('street', instance.street);
  writeNotNull('state', instance.state);
  writeNotNull('country', instance.country);
  writeNotNull('email_verified_at', instance.isEmailVerified);
  writeNotNull('is_verified', instance.isVerified);
  writeNotNull('locked_at', instance.lockedAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
