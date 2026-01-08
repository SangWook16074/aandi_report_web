import 'dart:developer';

import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_request_dto.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';

/// 사용자 로그인을 처리하는 UseCase 구현체입니다.
///
/// **비즈니스 로직:**
/// 1. 이미 로그인된 상태인지(토큰 존재 여부) 확인합니다.
/// 2. [authRepository.login]을 호출하여 서버 인증을 수행합니다.
/// 3. 발급받은 액세스 토큰을 [authRepository.saveToken]을 통해 저장합니다.
final class UserLoginUsecaseImpl implements UserLoginUsecase {
  final AuthRepository authRepository;

  const UserLoginUsecaseImpl({
    required this.authRepository,
  });

  /// 로그인을 수행합니다.
  ///
  /// 이미 로그인되어 있는 경우 예외를 발생시킵니다.
  /// 네트워크 오류 등 실패 시 예외를 던집니다.
  @override
  Future<void> call(LoginRequestDto dto) async {
    final token = await authRepository.getToken();
    if (token != null) throw Exception("이미 로그인 됨");
    try {
      final response = await authRepository.login(dto);
      final newAccessToken = response.accessToken;

      await authRepository.saveToken(newAccessToken);
    } catch (e) {
      log(e.toString());
      throw Exception("서버와의 통신이 원할하지 않습니다.");
    }
  }
}

/// 사용자 로그인을 처리하는 UseCase 인터페이스입니다.
abstract class UserLoginUsecase {
  Future<void> call(LoginRequestDto dto);
}
