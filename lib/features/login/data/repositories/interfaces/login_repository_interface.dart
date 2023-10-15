import 'package:dartz/dartz.dart';

import '/core/shared/error_handle/failure.dart';

abstract class LoginRepositoryInterfaces{
  Future<Either<Failure, String>> doLogin({required String userName, required String password});
}