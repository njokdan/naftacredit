import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:naftacredit/features/auth/domain/index.dart';
import 'package:naftacredit/features/core/domain/entities/entities.dart';
import 'package:naftacredit/features/core/domain/response/index.dart';

part 'auth_watcher_state.dart';
part 'auth_watcher_cubit.freezed.dart';

typedef Task = void Function(Either<Failure, Option<User?>> option);

@injectable
class AuthWatcherCubit extends Cubit<AuthWatcherState> {
  final AuthFacade _facade;
  StreamSubscription<Either<Failure, Option<User?>>>? _authStateChanges;

  AuthWatcherCubit(this._facade) : super(AuthWatcherState.initial());

  void toggleLoading([bool? isLoading]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  Future<User?> get currentUser async {
    final user = await _facade.currentUser;
    return user.getOrElse(() => none()).getOrElse(() => null);
  }

  Future<void> get unsubscribeAuthChanges async =>
      await _authStateChanges?.cancel();

  Future<void> subscribeToAuthChanges(Task actions) async {
    toggleLoading();

    // Get current user
    final user = await currentUser;
    // await signOut;

    // Cancel previous subscription
    await unsubscribeAuthChanges;

    // Start new subsrciption
    _authStateChanges ??= _facade.onAuthStateChanged.listen((data) {
      final _user = data.getOrElse(() => none()).getOrElse(() => null);

      emit(state.copyWith(isAuthenticated: _user != null, user: _user));

      actions.call(data);

      toggleLoading(false);
    });

    await _facade.sink();

    emit(state.copyWith(isAuthenticated: user != null, user: user));

    toggleLoading();
  }

  Future<void> get signOut async {
    toggleLoading();

    await _facade.signOut(true);

    toggleLoading();

    emit(state.copyWith(isAuthenticated: false, user: null));
  }

  @override
  Future<void> close() async {
    await _authStateChanges?.cancel();
    return super.close();
  }
}
