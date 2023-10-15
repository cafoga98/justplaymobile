import 'dart:convert';

import '/core/shared/config/api_config.dart';
import '/core/shared/config/environment_config.dart';
import '/features/login/data/services/interfaces/login_service_interface.dart';

/// LoginService Class
///
/// Implements the [LoginServiceInterface] to handle login-related network requests
/// and communicates with the server. It uses the provided [ApiConfig] and [EnvironmentConfig].
///
/// Example usage:
///
/// ```dart
/// final loginService = LoginService(apiConfig, environmentConfig);
/// ```
class LoginService extends LoginServiceInterface {
  final ApiConfig apiConfig;
  final EnvironmentConfig environmentConfig;

  LoginService(
    this.apiConfig,
    this.environmentConfig,
  );

  @override
  Future<Map> fetchLogin({
    required String userName,
    required String password,
  }) async {
    var body = jsonEncode({"userName": userName, "password": password});
    var data = await apiConfig.apiPost(
      '${environmentConfig.apiBase}/loginFake',
      body: body,
    );

    return data as Map<String, dynamic>;
  }
}
