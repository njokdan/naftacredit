import 'package:dartz/dartz.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/features/core/domain/validator/validator.dart';

class AmountField<U extends num> extends FieldObject<U?> {
  static const AmountField DEFAULT = AmountField._(Right(0));
  @override
  final Either<FieldObjectException<String>, U?> value;

  factory AmountField(U? input) {
    return AmountField._(Validator.isEmpty(input));
  }

  const AmountField._(this.value);
}
