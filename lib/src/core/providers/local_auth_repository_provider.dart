import 'package:a_and_i_report_web_server/src/feature/auth/data/datasources/local/local_auth_datasource.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/data/datasources/local/local_auth_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_auth_repository_provider.g.dart';

@riverpod
LocalAuthDatasource localAuthDatasource(Ref ref) {
  return LocalAuthDatasourceImpl();
}
