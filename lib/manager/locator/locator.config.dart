// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i26;
import 'package:firebase_analytics/firebase_analytics.dart' as _i6;
import 'package:firebase_core/firebase_core.dart' as _i7;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i8;
import 'package:flutter_login_facebook/flutter_login_facebook.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i10;
import 'package:naftacredit/features/auth/data/repositories/access_token/access_token_manager.dart'
    as _i24;
import 'package:naftacredit/features/auth/data/repositories/auth_facade_impl.dart'
    as _i16;
import 'package:naftacredit/features/auth/data/repositories/verification/account_verification_repository.dart'
    as _i21;
import 'package:naftacredit/features/auth/data/sources/local/auth_local_source.dart'
    as _i18;
import 'package:naftacredit/features/auth/data/sources/remote/auth_remote_source.dart'
    as _i17;
import 'package:naftacredit/features/auth/domain/index.dart' as _i15;
import 'package:naftacredit/features/auth/presentation/managers/account_verification/account_verification_cubit.dart'
    as _i20;
import 'package:naftacredit/features/auth/presentation/managers/auth_cubit/auth_cubit.dart'
    as _i23;
import 'package:naftacredit/features/auth/presentation/managers/watcher/auth_watcher_cubit.dart'
    as _i19;
import 'package:naftacredit/features/core/data/index.dart' as _i25;
import 'package:naftacredit/features/core/data/models/user/user_dto.dart'
    as _i27;
import 'package:naftacredit/features/core/data/repositories/alt_repository.dart'
    as _i22;
import 'package:naftacredit/features/core/presentation/managers/network/network_cubit.dart'
    as _i11;
import 'package:naftacredit/features/home/data/repositories/wallet_repository.dart'
    as _i28;
import 'package:naftacredit/features/onborading/presentation/managers/onboarding/onboarding_cubit.dart'
    as _i12;
import 'package:naftacredit/manager/locator/modules/modules.dart' as _i31;
import 'package:naftacredit/manager/settings/external/preference_repository.dart'
    as _i29;
import 'package:naftacredit/manager/settings/manager/global_app_preference_cubit.dart'
    as _i30;
import 'package:naftacredit/manager/theme/manager/theme_cubit.dart' as _i14;
import 'package:sembast/sembast.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> $initGetIt(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final serviceModules = _$ServiceModules();
    final modules = _$Modules();
    gh.lazySingleton<_i3.Connectivity>(() => serviceModules.connectionStatus);
    await gh.factoryAsync<_i4.Database>(() => modules.database,
        preResolve: true);
    gh.lazySingleton<_i5.FacebookLogin>(() => modules.facebookLogin);
    gh.lazySingleton<_i6.FirebaseAnalytics>(() => modules.firebaseAnalytics);
    await gh.factoryAsync<_i7.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i8.FirebaseCrashlytics>(
        () => modules.firebaseCrashlytics);
    gh.lazySingleton<_i10.InternetConnectionChecker>(
        () => serviceModules.connectionChecker);
    gh.factory<_i11.NetworkCubit>(() => _i11.NetworkCubit());
    gh.factory<_i12.OnboardingCubit>(() => _i12.OnboardingCubit());
    await gh.factoryAsync<_i13.SharedPreferences>(() => modules.preferences,
        preResolve: true);
    gh.factory<_i14.ThemeCubit>(() => _i14.ThemeCubit());
    gh.lazySingleton<_i15.AuthFacade>(() => _i16.AuthFacadeImpl(
        get<_i17.AuthRemoteDatasource>(),
        get<_i18.AuthLocalDatasource>(),
        get<_i6.FirebaseAnalytics>(),
        get<_i5.FacebookLogin>()));
    gh.factory<_i19.AuthWatcherCubit>(
        () => _i19.AuthWatcherCubit(get<_i15.AuthFacade>()));
    gh.factory<_i20.AccountVerificationCubit>(() =>
        _i20.AccountVerificationCubit(
            get<_i15.AuthFacade>(),
            get<_i21.AccountVerificationRepository>(),
            get<_i22.AltRepository>()));
    gh.factory<_i23.AuthCubit>(() => _i23.AuthCubit(get<_i15.AuthFacade>()));
    gh.singleton<_i24.AccessTokenManager>(_i24.AccessTokenManager.instance());
    gh.singleton<_i25.AppHttpClient>(serviceModules.httpClient);
    gh.singleton<_i26.Dio>(serviceModules.dio);
    gh.singleton<_i27.UserDAO>(_i27.UserDAO());
    gh.singleton<_i28.WalletRepository>(
        _i28.WalletRepository(get<_i25.AppHttpClient>()));
    gh.singleton<_i21.AccountVerificationRepository>(
        _i21.AccountVerificationRepository(get<_i25.AppHttpClient>()));
    gh.singleton<_i22.AltRepository>(
        _i22.AltRepository(get<_i25.AppHttpClient>()));
    gh.singleton<_i17.AuthRemoteDatasource>(
        _i17.AuthRemoteDatasource(get<_i26.Dio>()));
    gh.singleton<_i29.PreferenceRepository>(
        _i29.PreferenceRepository(get<_i13.SharedPreferences>()));
    gh.singleton<_i18.AuthLocalDatasource>(_i18.AuthLocalDatasource(
        get<_i24.AccessTokenManager>(),
        get<_i27.UserDAO>(),
        get<_i29.PreferenceRepository>()));
    gh.singleton<_i30.GlobalAppPreferenceCubit>(
        _i30.GlobalAppPreferenceCubit(get<_i29.PreferenceRepository>()));
    return this;
  }
}

class _$ServiceModules extends _i31.ServiceModules {}

class _$Modules extends _i31.Modules {}
