import 'package:a_and_i_report_web_server/src/feature/auth/data/datasources/local/local_auth_datasource.dart';
import 'package:web/web.dart';

final class LocalAuthDatasourceImpl implements LocalAuthDatasource {
  static const _tokenKey = 'access-token';

  /// 세션 스토리지에 jwt 저장
  ///
  ///
  @override
  Future<void> saveUserToken(String token) async {
    window.sessionStorage.setItem(_tokenKey, token);
  }

  /// 세션 스토리지로부터 jwt 읽어오기
  ///
  ///
  @override
  Future<String?> getUserToken() async {
    return window.sessionStorage.getItem(_tokenKey);
  }

  /// 세션 스토리지로부터 jwt 삭제
  ///
  ///
  @override
  Future<void> deleteUserToken() async {
    window.sessionStorage.removeItem(_tokenKey);
  }
}
