part of 'login_bloc.dart';

//Process to do
@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.userLoginEvent(
      {required String username, required String password}) = UserLoginEvent;
}
