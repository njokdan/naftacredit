import 'package:json_annotation/json_annotation.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';

class ProfileVerificationConverter
    implements JsonConverter<ProfileVerificationStatus?, String?> {
  const ProfileVerificationConverter();

  @override
  ProfileVerificationStatus? fromJson(String? value) =>
      value != null ? ProfileVerificationStatus.valueOf(value) : null;

  @override
  String? toJson(ProfileVerificationStatus? instance) => instance?.name;
}

// class FloorProfileVerificationConverter
//     extends TypeConverter<ProfileVerificationStatus, String> {
//   @override
//   ProfileVerificationStatus decode(String value) =>
//       !value.isNullOrBlank ? ProfileVerificationStatus.valueOf(value) : null;

//   @override
//   String encode(ProfileVerificationStatus instance) => instance?.name;
// }
