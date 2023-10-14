import 'package:dartz/dartz.dart';

import '/core/domain/entities/user.dart';
import '/core/shared/error_handle/failure.dart';

abstract class LocalStorageRepositoryInterface{

  Future<Either<Failure, User>> getLocalUser();

  Future<bool> setLocalUser({required User user});
}