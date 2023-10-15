import '/features/sports/domain/entities/avaliable_days.dart';

abstract class SportsServiceInterface {
  Future<List<AvaliableDays>?> fetchAvaliableSports();
}