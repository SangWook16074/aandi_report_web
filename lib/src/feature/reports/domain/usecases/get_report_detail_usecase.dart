import 'package:a_and_i_report_web_server/src/feature/auth/domain/repositories/auth_repository.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/data/entities/report.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/data/repositories/report_repository.dart';

/// 과제 상세 정보를 조회하는 UseCase 구현체입니다.
///
/// **동작 순서:**
/// 1. 인증 토큰 존재 여부를 확인합니다.
/// 2. [id]에 해당하는 과제 정보를 [ReportRepository]를 통해 요청합니다.
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

/// 과제 상세 정보 조회 UseCase 인터페이스입니다.
abstract class GetReportDetailUsecase {
  Future<Report> call(String id);
}
