import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';

import '/core/presentation/app.dart';
import '/core/di/dependency_injection.dart';
import '/core/shared/config/api_config.dart';
import '/core/shared/config/environment_config.dart';
import '/core/shared/config/connectivity_checker.dart';

void mainIntermediary(
    EnvironmentConfig environmentConfig,
    ) async {
  await ScreenUtil.ensureScreenSize();

  await DependencyInjectionConfig.init();

  final instance = DependencyInjectionConfig.instance;

  final apiConfig = ApiConfig(
    connectivityChecker: instance<ConnectivityChecker>(),
    client: instance<Client>(),
  );

  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );

  runApp(
    MyApp(
      getIt: instance,
      apiConfig: apiConfig,
      environmentConfig: environmentConfig,
    ),
  );
}