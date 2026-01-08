import 'package:a_and_i_report_web_server/src/feature/auth/data/datasources/local/local_auth_datasource.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';

/// 저장된 액세스 토큰을 조회하는 UseCase 구현체입니다.
final class GetUserAccessTokenUsecaseImpl implements GetUserAccessTokenUsecase {
  final AuthRepository authRepository;
  const GetUserAccessTokenUsecaseImpl({required this.authRepository});

  @override
  Future<String?> call() async {
    return await authRepository.getToken();
  }
}

/// 저장된 액세스 토큰을 조회하는 UseCase 인터페이스입니다.
abstract class GetUserAccessTokenUsecase {
  Future<String?> call();
}
