// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:firebase_analytics/firebase_analytics.dart' as _i4;
import 'package:firebase_core/firebase_core.dart' as _i5;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;
import 'package:naftacredit/features/auth/presentation/managers/otp_code_cubit/otp_code_cubit.dart'
    as _i11;
import 'package:naftacredit/features/core/presentation/managers/network/network_cubit.dart'
    as _i9;
import 'package:naftacredit/features/onborading/presentation/managers/onboarding/onboarding_cubit.dart'
    as _i10;
import 'package:naftacredit/manager/locator/modules/modules.dart' as _i13;
import 'package:naftacredit/manager/theme/manager/theme_cubit.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
    gh.lazySingleton<_i4.FirebaseAnalytics>(() => modules.firebaseAnalytics);
    await gh.factoryAsync<_i5.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i6.FirebaseCrashlytics>(
        () => modules.firebaseCrashlytics);
    gh.lazySingleton<_i7.GoogleSignIn>(() => modules.googleSignIn);
    gh.lazySingleton<_i8.InternetConnectionChecker>(
        () => serviceModules.connectionChecker);
    gh.factory<_i9.NetworkCubit>(() => _i9.NetworkCubit());
    gh.factory<_i10.OnboardingCubit>(() => _i10.OnboardingCubit());
    gh.factory<_i11.OtpCodeCubit>(() => _i11.OtpCodeCubit());
    gh.factory<_i12.ThemeCubit>(() => _i12.ThemeCubit());
    return this;
  }
}

class _$ServiceModules extends _i13.ServiceModules {}

class _$Modules extends _i13.Modules {}
