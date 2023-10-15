import 'package:dartz/dartz.dart';

import '/core/shared/error_handle/failure.dart';
import '/features/sports/domain/entities/avaliable_days.dart';

abstract class SportsRepositoryInterfaces{
  Future<Either<Failure, List<AvaliableDays>?>> getAvalibleSports();
}