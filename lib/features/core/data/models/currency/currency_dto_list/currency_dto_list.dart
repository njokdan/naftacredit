library currency_dto_list.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/data/models/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';

part 'currency_dto_list.g.dart';
part 'currency_dto_list.freezed.dart';

@freezed
@immutable
class CurrencyListDTO with _$CurrencyListDTO {
  const CurrencyListDTO._();

  const factory CurrencyListDTO({
    @JsonKey(includeIfNull: false) @Default([]) List<CurrencyDTO> currencies,
  }) = _CurrencyListDTO;

  factory CurrencyListDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrencyListDTOFromJson(json);

  List<Currency>? get domain => currencies.map((i) => i.domain).toList();
}
