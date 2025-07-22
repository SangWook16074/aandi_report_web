import 'package:a_and_i_report_web_server/src/core/providers/local_auth_repository_provider.dart';
import 'package:a_and_i_report_web_server/src/core/providers/remote_auth_datasource_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/data/repositories/auth_repository_impl.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
      localAuthRepository: ref.read(localAuthDatasourceProvider),
      remoteAuthRepository: ref.read(remoteAuthDatasourceProvider));
}
