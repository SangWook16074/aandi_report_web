import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../entities/report_summary.dart';

part 'report_summary_repository.g.dart';

/// 과제 레포지토리
@RestApi()
abstract class ReportSummaryRepository {
  factory ReportSummaryRepository(Dio dio, {String baseUrl}) =
      _ReportSummaryRepository;

  // 과제 목록 GET 요청
  @GET("/api/report")
  Future<List<ReportSummary>> getReportSummaries();
}
