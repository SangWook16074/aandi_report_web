import 'package:a_and_i_report_web_server/src/feature/auth/domain/usecases/user_login_usecase.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/providers/auth_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_login_usecase_provider.g.dart';

@riverpod
UserLoginUsecase userLoginUsecase(Ref ref) {
  return UserLoginUsecaseImpl(
    authRepository: ref.read(authRepositoryProvider),
  );
}
