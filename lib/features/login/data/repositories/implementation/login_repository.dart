import 'package:dartz/dartz.dart';
import 'package:justplaymobile/generated/l10n.dart';

import '/core/shared/error_handle/failure.dart';
import '/core/shared/error_handle/exceptions.dart';
import '/features/login/data/services/implementation/login_service.dart';
import '/features/login/data/repositories/interfaces/login_repository_interface.dart';

class LoginRepository extends LoginRepositoryInterfaces {
  final LoginService loginService;

  LoginRepository({
    required this.loginService,
  });

  @override
  Future<Either<Failure, String>> doLogin({
    required String userName,
    required String password,
  }) async {
    try {
      final response = await loginService.fetchLogin(
        userName: userName,
        password: password,
      );
      return right(response["message"]);
    } on NoConnectionException catch (e) {
      return left(Failure.noConnection(message: e.message));
    } on NoDataException catch (_) {
      return left(Failure.noData(message: S.current.wrongCredentials));
    } catch (e) {
      return left(Failure.noActionComplete(message: e.toString()));
    }
  }
}
