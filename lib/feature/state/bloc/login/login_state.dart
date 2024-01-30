part of 'login_bloc.dart';

//return values
@freezed
class LoginState with _$LoginState {
  const factory LoginState.loginedUser({required LoginUserModel? user}) =
      LoginedUser;
  const factory LoginState.loginFailedState() = LoginFailedState;

  factory LoginState.initial() => const LoginState.loginedUser(user: null);
}
