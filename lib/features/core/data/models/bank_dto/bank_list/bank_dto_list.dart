library bank_dto_list.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:naftacredit/features/core/data/models/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';

part 'bank_dto_list.g.dart';
part 'bank_dto_list.freezed.dart';

@freezed
@immutable
class BankDTOList with _$BankDTOList {
  const BankDTOList._();

  const factory BankDTOList({
    @JsonKey(includeIfNull: false, defaultValue: '') String? status,
    @Default(<BankDataModel>[])
    @JsonKey(includeIfNull: false)
        List<BankDataModel?> banks,
    @JsonKey(includeIfNull: false) PaginationLinks? links,
    @JsonKey(includeIfNull: false) MetaField? meta,
  }) = _BankDTOList;

  factory BankDTOList.fromJson(Map<String, dynamic> json) =>
      _$BankDTOListFromJson(json);

  /// Maps the Data Transfer Object to a Domain instance.
  KtList<Bank?> get domain => KtList.from(banks.map((e) => e?.domain));
}
