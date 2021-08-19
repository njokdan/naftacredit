library bank_data_model.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/manager/serializer/serializers.dart';

part 'bank_data_model.g.dart';
part 'bank_data_model.freezed.dart';

@freezed
@immutable
class BankDataModel with _$BankDataModel {
  const BankDataModel._();

  const factory BankDataModel({
    @JsonKey(includeIfNull: false) String? id,
    @JsonKey(includeIfNull: false, defaultValue: '') String? name,
    @JsonKey(includeIfNull: false, defaultValue: '') String? code,
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'country')
        String? countryCode,
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_full_name')
        String? countryName,
    @JsonKey(includeIfNull: false, name: 'updated_at')
    @TimestampConverter()
        DateTime? updatedAt,
    @JsonKey(includeIfNull: false, name: 'deleted_at')
    @TimestampConverter()
        DateTime? deletedAt,
  }) = _BankDataModel;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory BankDataModel.fromJson(Map<String, dynamic> json) =>
      _$BankDataModelFromJson(json);

  /// Maps the Data Transfer Object to a Domain instance.
  Bank get domain => Bank(
        id: UniqueId.fromExternal(id),
        name: BasicTextField(name),
        code: BasicTextField(code),
        countryCode: BasicTextField(countryCode),
        countryName: BasicTextField(countryName),
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
