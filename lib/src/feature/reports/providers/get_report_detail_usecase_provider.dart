import 'package:a_and_i_report_web_server/src/feature/auth/providers/auth_repository_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/domain/usecases/get_report_detail_usecase.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/providers/report_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_report_detail_usecase_provider.g.dart';

@riverpod
GetReportDetailUsecase getReportDetailUsecase(Ref ref) {
  return GetReportDetailUsecaseImpl(
      authRepository: ref.read(authRepositoryProvider),
      reportRepository: ref.read(reportRepositoryProvider));
}
