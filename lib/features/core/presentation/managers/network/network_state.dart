part of 'network_cubit.dart';

@freezed
@immutable
class NetworkState with _$NetworkState {
  const factory NetworkState({
    @Default(false) bool isLoading,
    @Default(Left(NetworkFailure.notConnected()))
        Either<Failure, bool> isConnected,
    @Default(Left(NetworkFailure.poorInternet()))
        Either<Failure, bool> hasInternet,
  }) = _NetworkState;
}
