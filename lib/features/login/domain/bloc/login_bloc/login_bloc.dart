import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/shared/error_handle/failure.dart';
import '/features/login/data/repositories/implementation/login_repository.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

/// A bloc that manages the login state of an app.
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  /// Creates a new LoginBloc instance.
  LoginBloc({
    required this.loginRepository,
  }) : super(const LoginState.initial()) {
    on<LoginEvent>(_fetchLogin);
  }

  /// Fetches the login state from the login repository.
  void _fetchLogin(LoginEvent event, Emitter<LoginState> emit) async {
    /// Emit a loading state to indicate that the login process is in progress.
    emit(const LoginState.loading());

    /// Wait for 2 seconds to simulate a network request.
    await Future.delayed(const Duration(seconds: 2));

    /// Call the login repository to login the user.
    final response = await loginRepository.doLogin(
        userName: event.userName, password: event.password);

    /// Emit the appropriate state depending on the response from the login repository.
    emit(response.fold(
          (left) {
        return LoginState.error(failure: left);
      },
          (right) {
        return LoginState.done(message: right);
      },
    ));
  }
}
