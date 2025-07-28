import 'package:a_and_i_report_web_server/src/feature/auth/domain/usecases/get_user_access_token_usecase.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/providers/auth_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_user_access_token_usecase_provider.g.dart';

@riverpod
GetUserAccessTokenUsecase getUserAccessTokenUsecase(Ref ref) {
  return GetUserAccessTokenUsecaseImpl(
    authRepository: ref.read(authRepositoryProvider),
  );
}
