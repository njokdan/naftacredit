import 'package:dartz/dartz.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';
import 'package:naftacredit/features/core/domain/validator/validator.dart';
import 'package:naftacredit/utils/utils.dart';

class PhotoField extends FieldObject<String?> {
  static const PhotoField DEFAULT = PhotoField._(Right(AppAssets.unnamed));

  @override
  final Either<FieldObjectException<String>, String?> value;

  factory PhotoField(String? input) {
    return PhotoField._(Validator.isEmpty(input));
  }

  const PhotoField._(this.value);
}
