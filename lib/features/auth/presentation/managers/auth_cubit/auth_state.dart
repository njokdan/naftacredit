part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  static FocusNode confirmPasswordFocus = FocusNode();
  static KtList<Country> countries = KtList.from(Country.list);
  static FocusNode emailFocus = FocusNode();
  static FocusNode firstNameFocus = FocusNode();
  static DateTime firstYear = DateTime(1960);
  static FocusNode lastNameFocus = FocusNode();
  static DateTime lastYear = DateTime(DateTime.now().year - 18);
  static FocusNode passwordFocus = FocusNode();

  const factory AuthState({
    required Country region,
    required Password passwordConfirmation,
    required OTPCode emailOTP,
    required User user,
    @Default(0.0) double passwordStrength,
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(true) bool isPasswordHidden,
    @Default(false) bool passwordMatches,
    @Default(None()) Option<Either<Failure, Response?>?> status,
  }) = _AuthState;

  const AuthState._();

  factory AuthState.initial() => AuthState(
        user: User.blank(),
        region: Country.DEFAULT,
        emailOTP: OTPCode(null),
        passwordConfirmation: Password(null),
      );
}

extension XPasswordStrength on AuthState {
  T? strength<T>({
    T? low,
    T? medium,
    T? perfect,
  }) {
    if (passwordStrength < 0.3) return low;
    if (passwordStrength > 0.3 && passwordStrength < 0.7) return medium;
    return perfect;
  }
}
