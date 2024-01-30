import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/login_user_model/login_user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginRepo loginRepo;
  LoginBloc(this.loginRepo) : super(LoginState.initial()) {
    on<UserLoginEvent>((event, emit) async {
      Either<MainFailures, LoginUserModel> login =
          await loginRepo.loginUserRepo(event.username, event.password);
      emit(login.fold(
          (l) => const LoginFailedState(), (r) => LoginedUser(user: r)));
    });
  }
}
