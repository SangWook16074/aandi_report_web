import 'package:a_and_i_report_web_server/src/feature/auth/data/datasources/local/local_auth_datasource.dart';
import 'package:web/web.dart';

final class LocalAuthDatasourceImpl implements LocalAuthDatasource {
  static const _tokenKey = 'access-token';

  /// 로컬 스토리지에 jwt 저장
  ///
  ///
  @override
  Future<void> saveUserToken(String token) async {
    window.localStorage.setItem(_tokenKey, token);
  }

  /// 로컬 스토리지로부터 jwt 읽어오기
  ///
  ///
  @override
  Future<String?> getUserToken() async {
    return window.localStorage.getItem(_tokenKey);
  }

  /// 로컬 스토리지로부터 jwt 삭제
  ///
  ///
  @override
  Future<void> deleteUserToken() async {
    window.localStorage.removeItem(_tokenKey);
  }
}
