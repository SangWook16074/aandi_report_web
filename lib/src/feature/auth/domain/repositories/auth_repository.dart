import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_request_dto.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_response_dto.dart';

abstract class AuthRepository {
  Future<LoginResponseDto> login(LoginRequestDto dto);
  Future<void> saveToken(String token);
  Future<String?> getToken();
  Future<void> deleteToken();
}
