import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/shared/error_handle/failure.dart';
import '/features/login/data/repositories/implementation/login_repository.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  LoginBloc({
    required this.loginRepository,
  }) : super(const LoginState.initial()) {
    on<LoginEvent>(_fetchLogin);
  }

  _fetchLogin(LoginEvent event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    emit(
      await Future.delayed(
        const Duration(seconds: 2),
        () async {
          final response = await loginRepository.doLogin(
              userName: event.userName, password: event.password);
          return response.fold(
            (left) {
              return LoginState.error(failure: left);
            },
            (right) {
              return LoginState.done(message: right);
            },
          );
        },
      ),
    );
  }
}
