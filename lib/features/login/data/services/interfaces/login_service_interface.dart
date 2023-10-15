abstract class LoginServiceInterface {
  Future<Map> fetchLogin({required String userName, required String password});
}