import 'package:a_and_i_report_web_server/src/feature/auth/data/datasources/local/local_auth_datasource.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';

final class GetUserAccessTokenUsecaseImpl implements GetUserAccessTokenUsecase {
  final AuthRepository authRepository;
  const GetUserAccessTokenUsecaseImpl({required this.authRepository});

  @override
  Future<String?> call() async {
    return await authRepository.getToken();
  }
}

abstract class GetUserAccessTokenUsecase {
  Future<String?> call();
}
