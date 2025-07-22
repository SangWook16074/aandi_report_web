abstract class LocalAuthDatasource {
  Future<String?> getUserToken();

  Future<void> saveUserToken(String token);

  Future<void> deleteUserToken();
}
