class AppHttpClientException<OriginalException extends Exception>
    implements Exception {
  final OriginalException? exception;

  const AppHttpClientException({this.exception});
}
