import 'package:dartz/dartz.dart';

import '/generated/l10n.dart';
import '/core/shared/error_handle/failure.dart';
import '/core/shared/error_handle/exceptions.dart';
import '/features/sports/domain/entities/avaliable_days.dart';
import '/features/sports/data/services/implementation/sports_service.dart';
import '/features/sports/data/repositories/interfaces/sports_repository_interface.dart';

class SportsRepository extends SportsRepositoryInterfaces {
  final SportsService sportsService;

  SportsRepository({
    required this.sportsService,
  });

  @override
  Future<Either<Failure, List<AvaliableDays>?>> getAvalibleSports() async {
    try {
      final response = await sportsService.fetchAvaliableSports();
      return right(response);
    } on NoConnectionException catch (e) {
      return left(Failure.noConnection(message: e.message));
    } on NoDataException catch (_) {
      return left(Failure.noData(message: S.current.wrongCredentials));
    } catch (e) {
      return left(Failure.noActionComplete(message: e.toString()));
    }
  }
}
