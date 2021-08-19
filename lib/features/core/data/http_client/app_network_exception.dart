import 'package:naftacredit/features/core/data/http_client/index.dart';

enum AppNetworkExceptionReason { cancelled, timedOut, responseError }

class AppNetworkException<OriginalException extends Exception>
    extends AppHttpClientException<OriginalException> {
  /// Create a network exception.
  const AppNetworkException({
    required this.reason,
    OriginalException? exception,
  }) : super(exception: exception);

  /// The reason the network exception ocurred.
  final AppNetworkExceptionReason reason;
}
