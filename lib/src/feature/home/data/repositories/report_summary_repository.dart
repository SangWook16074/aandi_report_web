import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../entities/report_summary.dart';

part 'report_summary_repository.g.dart';

/// 과제 목록 데이터를 가져오는 Retrofit 클라이언트입니다.
///
/// [Dio]를 사용하여 `/api/report` 엔드포인트와 통신합니다.
@RestApi()
abstract class ReportSummaryRepository {
  factory ReportSummaryRepository(Dio dio, {String baseUrl}) =
      _ReportSummaryRepository;

  /// 서버로부터 과제 목록을 조회합니다.
  ///
  /// [authorization] 헤더에 Bearer 토큰을 포함하여 요청해야 합니다.
  @GET("/api/report")
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<List<ReportSummary>> getReportSummaries(
      @Header("Authorization") String authorization);
}
