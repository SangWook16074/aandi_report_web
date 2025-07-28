import 'package:a_and_i_report_web_server/src/feature/auth/data/datasources/remote/remote_auth_datasource.dart';
import 'package:a_and_i_report_web_server/src/core/constants/api_url.dart';
import 'package:a_and_i_report_web_server/src/core/providers/dio_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_auth_datasource_provider.g.dart';

@riverpod
RemoteAuthDatasource remoteAuthDatasource(Ref ref) {
  return RemoteAuthDatasource(ref.read(dioProvider), baseUrl: baseUrl);
}
