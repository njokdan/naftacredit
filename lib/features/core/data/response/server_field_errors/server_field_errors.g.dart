// GENERATED CODE - DO NOT MODIFY BY HAND

part of server_field_errors.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerFieldErrors _$_$_ServerFieldErrorsFromJson(Map<String, dynamic> json) {
  return _$_ServerFieldErrors(
    name: (json['name'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    firstName: (json['firstName'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
    lastName:
        (json['lastName'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    token: (json['token'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    email: (json['email'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    gender:
        (json['gender'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    age: (json['age'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    phone: (json['phone'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    password:
        (json['password'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    code: (json['code'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    type: (json['type'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    description: (json['description'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
    street:
        (json['street'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    town: (json['town'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    stateId:
        (json['stateId'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    state: (json['state'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    document:
        (json['document'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    duration:
        (json['duration'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    amount:
        (json['amount'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    currencyId: (json['currencyId'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
    country:
        (json['country'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    comment:
        (json['comment'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    cardNumber: (json['cardNumber'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
    accountNumber: (json['accountNumber'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
    bankId:
        (json['bankId'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    bvn: (json['bvn'] as List<dynamic>?)?.map((e) => e as String?).toList(),
  );
}

Map<String, dynamic> _$_$_ServerFieldErrorsToJson(
    _$_ServerFieldErrors instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('token', instance.token);
  writeNotNull('email', instance.email);
  writeNotNull('gender', instance.gender);
  writeNotNull('age', instance.age);
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('code', instance.code);
  writeNotNull('type', instance.type);
  writeNotNull('description', instance.description);
  writeNotNull('street', instance.street);
  writeNotNull('town', instance.town);
  writeNotNull('stateId', instance.stateId);
  writeNotNull('state', instance.state);
  writeNotNull('document', instance.document);
  writeNotNull('duration', instance.duration);
  writeNotNull('amount', instance.amount);
  writeNotNull('currencyId', instance.currencyId);
  writeNotNull('country', instance.country);
  writeNotNull('comment', instance.comment);
  writeNotNull('cardNumber', instance.cardNumber);
  writeNotNull('accountNumber', instance.accountNumber);
  writeNotNull('bankId', instance.bankId);
  writeNotNull('bvn', instance.bvn);
  return val;
}
