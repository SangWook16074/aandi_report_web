import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';

/// 사용자 액세스 토큰을 삭제(로그아웃)하는 UseCase 구현체입니다.
final class DeleteUserAccessTokenUsecaseImpl
    implements DeleteUserAccessTokenUsecase {
  final AuthRepository authRepository;

  const DeleteUserAccessTokenUsecaseImpl({required this.authRepository});

  @override
  Future<void> call() async {
    await authRepository.deleteToken();
  }
}

/// 사용자 액세스 토큰을 삭제하는 UseCase 인터페이스입니다.
abstract class DeleteUserAccessTokenUsecase {
  Future<void> call();
}
