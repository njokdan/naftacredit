library bank.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';

part 'bank.freezed.dart';

@freezed
@immutable
class Bank with _$Bank {
  const Bank._();

  const factory Bank({
    required UniqueId<String?> id,
    required BasicTextField<String?> name,
    required BasicTextField<String?> code,
    required BasicTextField<String?> countryCode,
    required BasicTextField<String?> countryName,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Bank;
}
