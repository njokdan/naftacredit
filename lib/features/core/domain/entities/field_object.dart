import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/utils/utils.dart';

@immutable
abstract class FieldObject<T> {
  const FieldObject();

  Either<FieldObjectException<String>, T?> get value;

  bool compare(String? other) =>
      identical(getOrNull, other) ||
      const DeepCollectionEquality().equals(getOrNull, other);

  Either<FieldObjectException<dynamic>, Unit> get mapped =>
      value.fold((f) => left(f), (_) => right(unit));

  FieldObjectException<dynamic>? get failure =>
      value.fold((f) => f, (_) => null);

  bool get isValid => value.isRight();

  T? get getOrCrash => value.fold((f) {
        log.e('Unexpected Failure '
            '(Field Object Failure: [${value.runtimeType}])');
        throw UnExpectedFailure(message: f.message);
      }, id);

  T? get getOrNull => value.fold((_) => null, id);

  T? get getOrEmpty {
    return value.fold((_) {
      if (T is Iterable) return [] as T?;
      if (T is num) return 0 as T?;
      if (T is String) return '' as T;
      return '' as T;
    }, id);
  }

  @override
  bool operator ==(o) {
    if (identical(this, o)) return true;
    return o is FieldObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'FieldObject<$T>(${getOrEmpty.toString()})';
}
