import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/shared/config/api_config.dart';
import '/core/shared/config/environment_config.dart';
import '/features/sports/presentation/pages/sport_sub_page.dart';
import '/features/sports/domain/bloc/sports_bloc/sports_bloc.dart';
import '/features/sports/data/repositories/implementation/sports_repository.dart';
import '/features/sports/data/services/implementation/sports_service.dart';

@RoutePage()
class SportPage extends StatelessWidget {
  final String city;

  const SportPage({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SportsService>(
          create: (context) => SportsService(
            context.read<ApiConfig>(),
            context.read<EnvironmentConfig>(),
          ),
        ),
        RepositoryProvider<SportsRepository>(
          create: (context) =>
              SportsRepository(sportsService: context.read<SportsService>()),
        ),
      ],
      child: BlocProvider<SportsBloc>(
        create: (BuildContext context) => SportsBloc(
          sportsRepository: context.read<SportsRepository>(),
        )..add(const SportsEvent.started()),
        child: SportSubPage(city: city),
      ),
    );
  }
}
