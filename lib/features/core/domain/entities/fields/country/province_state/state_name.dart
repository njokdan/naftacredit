import 'package:dartz/dartz.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/features/core/domain/validator/validator.dart';

class StateNameField extends FieldObject<String?> {
  static const StateNameField DEFAULT = StateNameField._(Right(''));
  @override
  final Either<FieldObjectException<String>, String?> value;

  factory StateNameField(String? input) {
    return StateNameField._(Validator.isEmpty(input));
  }

  const StateNameField._(this.value);
}
