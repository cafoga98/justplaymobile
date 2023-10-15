import '/core/shared/config/api_config.dart';
import '/core/shared/config/environment_config.dart';
import '/features/sports/domain/entities/avaliable_days.dart';
import '/features/sports/data/services/interfaces/sports_service_interface.dart';

class SportsService extends SportsServiceInterface {
  final ApiConfig apiConfig;
  final EnvironmentConfig environmentConfig;

  SportsService(
      this.apiConfig,
      this.environmentConfig,
      );

  @override
  Future<List<AvaliableDays>?> fetchAvaliableSports() async {
    var data = await apiConfig.apiGet(
      '${environmentConfig.apiBase}/avaliableGames',
    );

    Map newMap = data as Map<String, dynamic>;
    List newList = newMap["avaliableDays"] as List;
    final response = newList.map((e) => AvaliableDays.fromJson(e)).toList();

    //final response = ((data as Map<String, dynamic>)["avaliableDays"] as List).map((e) => AvaliableDays.fromJson(e)).toList();
    return response;
  }
}
