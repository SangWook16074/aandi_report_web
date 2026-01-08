import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_summary.dart';
import 'package:a_and_i_report_web_server/src/feature/home/data/repositories/report_summary_repository.dart';

/// 과제 목록을 조회하는 UseCase 구현체입니다.
///
/// **동작 순서:**
/// 1. [AuthRepository]를 통해 로컬 저장소의 토큰을 확인합니다.
/// 2. 토큰이 없으면 예외를 발생시킵니다 (로그인 필요).
/// 3. 토큰을 `Authorization` 헤더 포맷(`Bearer ...`)으로 가공합니다.
/// 4. [ReportSummaryRepository]를 호출하여 데이터를 받아옵니다.
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

/// 과제 목록 조회 UseCase 인터페이스입니다.
abstract class GetReportSummaryUsecase {
  Future<List<ReportSummary>> call();
}
