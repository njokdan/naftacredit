import 'package:naftacredit/features/core/domain/response/index.dart';

extension ResponseX on Response {
  U? fold<U>({
    U Function(Info)? info,
    U Function(Success)? success,
  }) {
    if (this is Info) return info?.call(this as Info);
    if (this is Success) return success?.call(this as Success);
  }
}
