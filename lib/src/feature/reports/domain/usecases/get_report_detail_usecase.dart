import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/data/entities/report.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/data/repositories/report_repository.dart';

final class GetReportDetailUsecaseImpl implements GetReportDetailUsecase {
  final ReportRepository reportRepository;
  final AuthRepository authRepository;

  const GetReportDetailUsecaseImpl({
    required this.reportRepository,
    required this.authRepository,
  });

  @override
  Future<Report> call(String id) async {
    // 세션 스토리지에서 토큰 가져오기
    final token = await authRepository.getToken();

    // 토큰이 없으면 인증되지 않은 사용자
    if (token == null || token.isEmpty) {
      throw Exception('인증되지 않은 사용자입니다. 로그인이 필요합니다.');
    }

    final authorization = 'Bearer $token';
    return await reportRepository.getReportDetailById(id, authorization);
  }
}

abstract class GetReportDetailUsecase {
  Future<Report> call(String id);
}
