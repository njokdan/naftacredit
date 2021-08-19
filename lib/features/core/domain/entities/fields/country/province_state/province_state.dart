library province_state.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';

part 'province_state.freezed.dart';

@freezed
@immutable
class ProvinceState with _$ProvinceState {
  const ProvinceState._();

  const factory ProvinceState({
    UniqueId<String?>? id,
    StateNameField? name,
    @Default(false) bool isSupported,
    Country? country,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _ProvinceState;
}
