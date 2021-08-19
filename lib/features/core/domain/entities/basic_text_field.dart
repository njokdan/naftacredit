import 'package:dartz/dartz.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/features/core/domain/validator/validator.dart';

typedef LengthValidator<G> = StringValidator<G> Function(G?);

class BasicTextField<U> extends FieldObject<U?> {
  static const BasicTextField<num> DEFAULT_NUM =
      BasicTextField<num>._(Right(0));

  static const BasicTextField<String> DEFAULT_STRING =
      BasicTextField<String>._(Right(''));

  @override
  final Either<FieldObjectException<String>, U?> value;

  factory BasicTextField(U? input, {LengthValidator<U?>? other}) =>
      BasicTextField._(Validator.isEmpty(input).flatMap(
        other ?? (a) => right(a),
      ));

  const BasicTextField._(this.value);
}
