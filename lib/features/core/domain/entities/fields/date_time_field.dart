import 'package:dartz/dartz.dart';
import 'package:naftacredit/features/auth/presentation/managers/managers.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/features/core/domain/validator/validator.dart';
import 'package:naftacredit/utils/utils.dart';

class DateTimeField extends FieldObject<DateTime?> {
  static const DateTimeField DEFAULT = DateTimeField._(Right(null));
  static final custom = AuthState.firstYear.add(const Duration(days: 1000));

  @override
  final Either<FieldObjectException<String>, DateTime?> value;

  factory DateTimeField(DateTime? input) {
    return DateTimeField._(
      Validator.isEmpty(input).flatMap(Validator.isValidDate),
    );
  }

  const DateTimeField._(this.value);

  DateTime? initialDateOfBirth([Function(DateTime)? onChanged]) {
    if (isNullOrBlank) return null;

    if (!_isValidDateOfBirth!) {
      onChanged?.call(custom);
      return custom;
    }

    return getOrNull;
  }

  /// Note: in this context, returning "true" for null dob works,
  /// because it means the user hasn't supplied a date
  bool? get _isValidDateOfBirth =>
      !getOrNull.isNullOrBlank ? getOrNull?.isBefore(AuthState.lastYear) : true;
}
