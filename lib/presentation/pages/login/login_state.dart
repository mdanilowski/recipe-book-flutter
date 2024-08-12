part of 'login_cubit.dart';

@freezed
sealed class LoginState with _$LoginState {
  bool get isLoadingButtonActive => switch (this) { AuthInProgress() || LoggedInSuccessfully() => false, _ => true };

  bool get isAuthInProgress => switch (this) { AuthInProgress() => true, _ => false };

  const LoginState._();

  const factory LoginState.initial() = Initial;

  const factory LoginState.authInProgress({
    required LoginMethod loginType,
  }) = AuthInProgress;

  const factory LoginState.loggedInSuccessfully() = LoggedInSuccessfully;

  const factory LoginState.authError() = AuthError;
}
