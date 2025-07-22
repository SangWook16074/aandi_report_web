import 'dart:developer';

import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_request_dto.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';

final class UserLoginUsecaseImpl implements UserLoginUsecase {
  final AuthRepository authRepository;

  const UserLoginUsecaseImpl({
    required this.authRepository,
  });

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

abstract class UserLoginUsecase {
  Future<void> call(LoginRequestDto dto);
}
