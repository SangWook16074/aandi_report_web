import 'package:a_and_i_report_web_server/src/feature/auth/data/datasources/local/local_auth_datasource.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';

final class DeleteUserAccessTokenUsecaseImpl
    implements DeleteUserAccessTokenUsecase {
  final AuthRepository authRepository;

  const DeleteUserAccessTokenUsecaseImpl({required this.authRepository});

  @override
  Future<void> call() async {
    await authRepository.deleteToken();
  }
}

abstract class DeleteUserAccessTokenUsecase {
  Future<void> call();
}
