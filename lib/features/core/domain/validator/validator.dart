library validator.dart;

import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/utils/utils.dart';

part 'credit_card_validator.dart';

const int MIN_PASSWORD_LENGTH = 6;
const int MIN_USERNAME_LENGTH = 6;
const Pattern emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
const Pattern upperCasePattern = '(.*[A-Z].*)';
const Pattern numberPattern = '[0-9]+';
const Pattern symbolPattern = r"[-!$@%^&#*()_+|~=`{}\[\]:\;'<>?\\,.\/]";
const Pattern onlyNumbersPattern = '^[0-9]*\$';
const Pattern datePattern =
    r'(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)[0-9]{2}';

enum FIELD_VALIDATION { NONE, BASIC, DEEP }

typedef StringValidator<U> = Either<FieldObjectException<String>, U?>;

class Validator with _CreditCardValidator {
  Validator._();

  static StringValidator<T> isEmpty<T>(T? value) {
    // Returns the string without any leading and trailing whitespace
    if (value == null) return left(FieldObjectException.empty());

    if (value is String && value.trim().isEmpty)
      return left(FieldObjectException.empty());

    if (value is KtList && value.isEmpty())
      return left(FieldObjectException.empty());

    if (value is BuiltList && value.isEmpty)
      return left(FieldObjectException.empty());

    return right((value is String ? value.trim() as T : value));
  }

  static StringValidator<String?> usernameValidator(String? value) {
    if (value == null) return left(FieldObjectException.empty());

    var clean = value.trim();

    if (clean.isEmpty) return left(FieldObjectException.empty());

    var shortUsername = clean.length < MIN_PASSWORD_LENGTH;

    if (shortUsername)
      return left(FieldObjectException.invalid(
        message: SHORT_USERNAME_MESSAGE,
      ));

    return right(value);
  }

  static StringValidator<String?> emailValidator(String? email) {
    // Returns the string without any leading and trailing whitespace
    if (email == null) return left(FieldObjectException.empty());

    var clean = email.trim();

    if (clean.isEmpty) return left(FieldObjectException.empty());

    if (!RegExp('$emailPattern').hasMatch(clean))
      return left(FieldObjectException.invalid(message: INVALID_EMAIL_MESSAGE));

    return right(email);
  }

  static StringValidator<String?> passwordValidator(String? password) {
    if (password == null) return left(FieldObjectException.empty());

    var clean = password.trim();

    if (clean.isEmpty)
      return left(FieldObjectException.invalid(
        message: SHORT_PASSWORD_MESSAGE,
      ));

    return right(password);
  }

  static StringValidator<String?> phoneNumberValidator(
    String? phone,
    Country country, {
    FIELD_VALIDATION? mode = FIELD_VALIDATION.DEEP,
  }) {
    if (phone == null) return left(FieldObjectException.empty());

    var clean = phone.trim();

    var containsOnlyDigits =
        RegExp(r'^[0-9]+$', multiLine: true).hasMatch(clean);

    switch (mode) {
      case FIELD_VALIDATION.NONE:
        break;
      case FIELD_VALIDATION.BASIC:
        if (clean.isEmpty) return left(FieldObjectException.empty());
        break;
      case FIELD_VALIDATION.DEEP:
      default:
        if (clean.isEmpty) return left(FieldObjectException.empty());
        if (clean.length != country.digitsCount)
          return left(FieldObjectException.invalid(
              message:
                  'Required: ${country.digitsCount - clean.length} digits.'));
        if (!containsOnlyDigits)
          return left(FieldObjectException.invalid(message: INVALID_PHONE));
        break;
    }

    return right(phone);
  }

  static StringValidator<String?> otpCodeValidator(String? code,
      {int max = 6}) {
    if (code == null) return left(FieldObjectException.empty());

    var clean = code.trim();

    if (clean.isEmpty) return left(FieldObjectException.empty());

    if (clean.length < max)
      return left(FieldObjectException.invalid(
        message: '$INCOMPLETE_OTP_CODE ${clean.length} digits.',
      ));
    return right(code);
  }

  static Either<FieldObjectException<String>, DateTime?> isValidDate(
    DateTime? date,
  ) {
    if (date == null) return left(FieldObjectException.empty());

    var day = date.day < 10 ? '0${date.day}' : date.day.toString();
    var month = date.month < 10 ? '0${date.month}' : date.month.toString();
    var _date = '$day/$month/${date.year}';

    var isValid = RegExp(
            r'(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)[0-9]{2}')
        .hasMatch(_date);

    if (!isValid)
      return left(FieldObjectException.invalid(
        message: INVALID_DATE_OF_BIRTH,
      ));

    return right(date);
  }

  static StringValidator<U?> exactLength<U>(U? input,
      {int? length, bool enforce = false, String? msg}) {
    if (!enforce && length == null) return right(input);

    if (enforce && length == null)
      return left(FieldObjectException.invalid(
        message: 'Invalid length (null) passed to validator!',
      ));

    if (input == null) return left(FieldObjectException.empty());

    var clean = '$input'.trim();

    if (clean.length != length!)
      return left(FieldObjectException.exceedsLength(
        message: msg ?? 'Value must be equal to $length',
      ));

    return right(input);
  }

  static StringValidator<U?> minLength<U>(U? input,
      [int? length, bool enforce = false]) {
    if (!enforce && length == null) return right(input);

    if (enforce && length == null)
      return left(FieldObjectException.invalid(
        message: 'Invalid length (null) passed to validator!',
      ));

    if (input == null) return left(FieldObjectException.empty());

    var clean = '$input'.trim();

    if (clean.length < length!)
      return left(FieldObjectException.exceedsLength(
        message: 'Value must be greater than $length',
      ));

    return right(input);
  }

  static StringValidator<U?> maxLength<U>(U? input,
      [int? length, bool enforce = false]) {
    if (!enforce && length == null) return right(input);

    if (enforce && length == null)
      return left(FieldObjectException.invalid(
        message: 'Invalid length (null) passed to validator!',
      ));

    if (input == null) return left(FieldObjectException.empty());

    var clean = '$input'.trim();

    if (clean.length > length!)
      return left(FieldObjectException.exceedsLength(
        message: 'Value must be less than $length',
      ));

    return right(input);
  }
}
