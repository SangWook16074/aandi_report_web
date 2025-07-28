import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_summary.dart';
import 'package:a_and_i_report_web_server/src/feature/home/data/repositories/report_summary_repository.dart';

final class GetReportSummaryUsecaseImpl implements GetReportSummaryUsecase {
  final AuthRepository authRepository;
  final ReportSummaryRepository reportSummaryRepository;
  const GetReportSummaryUsecaseImpl({
    required this.authRepository,
    required this.reportSummaryRepository,
  });

  @override
  Future<List<ReportSummary>> call() async {
    // 세션 스토리지에서 토큰 가져오기
    final token = await authRepository.getToken();
    // 토큰이 없으면 인증되지 않은 사용자
    if (token == null || token.isEmpty) {
      throw Exception('인증되지 않은 사용자입니다. 로그인이 필요합니다.');
    }

    final authorization = 'Bearer $token';
    return await reportSummaryRepository.getReportSummaries(authorization);
  }
}

abstract class GetReportSummaryUsecase {
  Future<List<ReportSummary>> call();
}
