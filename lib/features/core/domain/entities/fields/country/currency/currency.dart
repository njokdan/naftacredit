library currency.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';

part 'currency.freezed.dart';

@freezed
@immutable
class Currency with _$Currency {
  const Currency._();

  const factory Currency({
    UniqueId<String?>? id,
    String? name,
    @Default(CurrencyType.NGN) CurrencyType? type,
  }) = _Currency;
}
