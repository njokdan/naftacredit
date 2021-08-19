library countries_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:naftacredit/features/core/data/models/country/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/manager/serializer/serializers.dart';

part 'countries_dto.g.dart';
part 'countries_dto.freezed.dart';

@freezed
@immutable
class CountriesDTO with _$CountriesDTO {
  const CountriesDTO._();

  const factory CountriesDTO(
    @JsonKey(includeIfNull: false, defaultValue: []) List<CountriesList>? data,
    @JsonKey(includeIfNull: false, name: 'created_at')
    @TimestampConverter()
        DateTime? createdAt,
    @JsonKey(includeIfNull: false, name: 'updated_at')
    @TimestampConverter()
        DateTime? updatedAt,
    @JsonKey(includeIfNull: false, name: 'deleted_at')
    @TimestampConverter()
        DateTime? deletedAt,
  ) = _CountriesDTO;

  factory CountriesDTO.fromJson(Map<String, dynamic> json) =>
      _$CountriesDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<Country> Object.
  KtList<Country> get domain => data!.map((e) => e.domain).toImmutableList();
}
