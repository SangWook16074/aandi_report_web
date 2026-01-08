import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_request_dto.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_response_dto.dart';

/// 인증 관련 데이터 처리를 담당하는 Repository 인터페이스입니다.
///
/// Domain 계층에 위치하며, Data 계층의 구현체([AuthRepositoryImpl])에 의해 구체화됩니다.
/// 원격 서버 로그인 및 로컬 저장소(토큰) 관리를 추상화합니다.
abstract class AuthRepository {
  /// 서버에 로그인을 요청합니다.
  ///
  /// [dto]에 담긴 사용자 정보(ID, PW)를 전송하고, 성공 시 [LoginResponseDto]를 반환합니다.
  Future<LoginResponseDto> login(LoginRequestDto dto);

  /// 액세스 토큰을 로컬 저장소(Session Storage 등)에 저장합니다.
  Future<void> saveToken(String token);

  /// 로컬 저장소에 저장된 액세스 토큰을 조회합니다.
  ///
  /// 토큰이 없으면 `null`을 반환합니다.
  Future<String?> getToken();

  /// 로컬 저장소의 액세스 토큰을 삭제합니다. (로그아웃 시 사용)
  Future<void> deleteToken();
}
