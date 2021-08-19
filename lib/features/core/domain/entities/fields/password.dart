import 'package:dartz/dartz.dart';
import 'package:naftacredit/features/core/domain/entities/field_object.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/features/core/domain/validator/validator.dart';

class Password extends FieldObject<String?> {
  static const Password DEFAULT = Password._(Right(''));
  static const String kPlaceholder = 'secret';

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory Password(String? password) =>
      Password._(Validator.passwordValidator(password));

  const Password._(this.value);
}
