library state_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/data/models/country/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/manager/serializer/serializers.dart';

part 'state_dto.g.dart';
part 'state_dto.freezed.dart';

@freezed
@immutable
class StateDTO with _$StateDTO {
  const StateDTO._();

  const factory StateDTO({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeIfNull: false, defaultValue: '') String? name,
    @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
    @IntToBoolSerializer()
    @Default(false)
        bool isSupported,
    @JsonKey(includeIfNull: false, name: 'country_id')
    @IntegerSerializer()
        String? countryId,
    @JsonKey(includeIfNull: false) CountryDTO? country,
    @JsonKey(includeIfNull: false, name: 'created_at')
    @TimestampConverter()
        DateTime? createdAt,
    @JsonKey(includeIfNull: false, name: 'updated_at')
    @TimestampConverter()
        DateTime? updatedAt,
    @JsonKey(includeIfNull: false, name: 'deleted_at')
    @TimestampConverter()
        DateTime? deletedAt,
  }) = _StateDTO;

  factory StateDTO.fromJson(Map<String, dynamic> json) =>
      _$StateDTOFromJson(json);

  factory StateDTO.fromDomain(ProvinceState? instance) => StateDTO(
        id: instance?.id?.value,
        name: instance?.name?.getOrNull,
        countryId: instance?.country?.id?.value,
      );

  ProvinceState get domain => ProvinceState(
        id: UniqueId<String>.fromExternal(id),
        name: StateNameField(name),
        isSupported: isSupported,
        country: country?.domain,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
