library user;

import 'package:dartz/dartz.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/domain/entities/fields/fields.dart';
import 'package:naftacredit/features/core/domain/entities/unique_id.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';

import 'auth_provider.dart';

part 'user.freezed.dart';

@freezed
@immutable
class User with _$User {
  const User._();

  const factory User({
    required UniqueId<String?> uid,
    @Default(0.0) double? balance,
    required DisplayName firstName,
    required DisplayName lastName,
    required DisplayName fullName,
    required EmailAddress email,
    required Gender gender,
    required DateTimeField dateOfBirth,
    @Default(false) bool isEmailVerified,
    @Default(false) bool isVerified,
    AuthProvider? provider,
    required Phone phone,
    required Password password,
    required PhotoField photo,
    required BasicTextField<String?> street,
    required UniqueId<String?> state,
    Country? country,
    DateTime? lockedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _User;

  factory User.blank({
    UniqueId<String?>? uid,
    DisplayName? firstName,
    DisplayName? lastName,
    DisplayName? fullName,
    EmailAddress? email,
    Gender? gender,
    DateTimeField? dateOfBirth,
    Phone? phone,
    Password? password,
    PhotoField? photo,
    BasicTextField<String?>? street,
    UniqueId<String?>? state,
    Country? country,
  }) =>
      User(
        uid: uid ?? UniqueId.fromExternal(null),
        firstName: firstName ?? DisplayName(null),
        lastName: lastName ?? DisplayName(null),
        fullName: fullName ?? DisplayName(null),
        dateOfBirth: dateOfBirth ?? DateTimeField(null),
        gender: gender ?? Gender(null),
        email: email ?? EmailAddress(null),
        phone: phone ?? Phone(null, Country.DEFAULT),
        photo: photo ?? PhotoField(null),
        password: password ?? Password(null),
        street: street ?? BasicTextField(null),
        state: state ?? UniqueId.fromExternal(null),
        country: country,
      );

  Option<FieldObjectException<dynamic>> get signup => firstName.mapped
      .andThen(lastName.mapped)
      .andThen(email.mapped)
      .andThen(password.mapped)
      .fold((f) => some(f), (_) => none());

  Option<FieldObjectException<dynamic>> get login =>
      email.mapped.andThen(password.mapped).fold((f) => some(f), (_) => none());
}
