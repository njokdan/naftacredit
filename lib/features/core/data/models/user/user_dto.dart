library user_dto.dart;

import 'package:injectable/injectable.dart';
import 'package:naftacredit/features/core/data/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:sembast/sembast.dart';

part 'user_dto.g.dart';
part 'user_dto.freezed.dart';

@freezed
@immutable
class UserDTO with _$UserDTO, DAOEntity<$UserDTOCopyWith<UserDTO>> {
  const factory UserDTO({
    @JsonKey(ignore: true) int? key,
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeIfNull: false) double? balance,
    @JsonKey(includeIfNull: false) String? token,
    @JsonKey(includeIfNull: false, name: 'first_name') String? firstName,
    @JsonKey(includeIfNull: false, name: 'last_name') String? lastName,
    @JsonKey(includeIfNull: false, name: 'full_name') String? fullName,
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? gender,
    @JsonKey(includeIfNull: false, name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false, name: 'register_via') String? provider,
    @JsonKey(includeIfNull: false) String? password,
    @JsonKey(includeIfNull: false) String? image,
    @JsonKey(includeIfNull: false) String? street,
    @JsonKey(includeIfNull: false) String? state,
    @JsonKey(includeIfNull: false) String? country,
    @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
        bool? isEmailVerified,
    @JsonKey(includeIfNull: false, name: 'is_verified', defaultValue: false)
        bool? isVerified,
    @JsonKey(includeIfNull: false, name: 'locked_at') String? lockedAt,
    @JsonKey(includeIfNull: false, name: 'created_at') String? createdAt,
    @JsonKey(includeIfNull: false, name: 'updated_at') String? updatedAt,
    @JsonKey(includeIfNull: false, name: 'deleted_at') String? deletedAt,
  }) = _UserDTO;

  const UserDTO._();

  factory UserDTO.fromDomain(User? instance) => UserDTO(
        firstName: instance?.firstName.getOrNull,
        lastName: instance?.lastName.getOrNull,
        email: instance?.email.getOrNull,
        password: instance?.password.getOrNull,
      );

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  User get domain => User(
        uid: UniqueId<String>.fromExternal(id),
        balance: balance,
        firstName: DisplayName(firstName),
        lastName: DisplayName(lastName),
        fullName: DisplayName(fullName),
        email: EmailAddress(email),
        gender: Gender(GenderType.valueOf(gender ?? '')),
        dateOfBirth: DateTimeField(DateTime.tryParse(dateOfBirth ?? '')),
        isEmailVerified: isEmailVerified!,
        isVerified: isVerified!,
        phone: Phone(phone, Country.DEFAULT),
        provider: AuthProvider.valueOf(provider ?? ''),
        street: BasicTextField(street),
        state: UniqueId.fromExternal(state),
        password: Password(password),
        photo: PhotoField(image),
        country: Country(name: CountryName.valueOf(country ?? '')),
        lockedAt: DateTime.tryParse(lockedAt ?? ''),
        createdAt: DateTime.tryParse(createdAt ?? ''),
        updatedAt: DateTime.tryParse(updatedAt ?? ''),
        deletedAt: DateTime.tryParse(deletedAt ?? ''),
      );

  static bool? isEmailVerifiedFromJson(dynamic dateTime) {
    if (dateTime == null) return false;
    if (dateTime is bool) return dateTime;
    return (dateTime as String?) != null && dateTime!.isNotEmpty;
  }
}

@singleton
class UserDAO with BaseDAO<UserDTO> {
  static const String STORE_NAME = 'users';

  @override
  StoreRef<int, Map<String, Object?>> store =
      intMapStoreFactory.store(STORE_NAME);
}
