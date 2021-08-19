import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/entities/field_object.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/features/core/domain/validator/validator.dart';

/// Contains power-packed methods for any InputField type.
class ImmutableIds<U> extends FieldObject<KtList<UniqueId<U>?>?> {
  static const ImmutableIds<int> EMPTY = ImmutableIds._(Right(KtList.empty()));

  @override
  final Either<FieldObjectException<String>, KtList<UniqueId<U>?>?> value;

  factory ImmutableIds(KtList<UniqueId<U>?>? input) =>
      ImmutableIds._(Validator.isEmpty(input));

  const ImmutableIds._(this.value);
}
