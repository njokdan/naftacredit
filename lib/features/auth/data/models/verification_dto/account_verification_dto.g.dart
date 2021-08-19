// GENERATED CODE - DO NOT MODIFY BY HAND

part of account_verification_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountVerificationDTO _$_$_AccountVerificationDTOFromJson(
    Map<String, dynamic> json) {
  return _$_AccountVerificationDTO(
    email: json['email'] as String?,
    bvn: json['bvn'] as String?,
    token: json['token'] as String?,
    street: json['street'] as String?,
    stateId: json['state'] as String?,
    countryId: json['country'] as String?,
  );
}

Map<String, dynamic> _$_$_AccountVerificationDTOToJson(
    _$_AccountVerificationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('bvn', instance.bvn);
  writeNotNull('token', instance.token);
  writeNotNull('street', instance.street);
  writeNotNull('state', instance.stateId);
  writeNotNull('country', instance.countryId);
  return val;
}
