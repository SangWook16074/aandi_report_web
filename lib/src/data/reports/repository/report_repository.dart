import 'package:a_and_i_report_web_server/src/data/reports/dtos/report_summary.dart';
import 'package:a_and_i_report_web_server/src/data/reports/entity/report.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'report_repository.g.dart';

/// 과제 레포지토리
@RestApi(
    baseUrl: "http://ec2-3-39-93-251.ap-northeast-2.compute.amazonaws.com:8081")
abstract class ReportRepository {
  factory ReportRepository(Dio dio, {String baseUrl}) = _ReportRepository;

  // 과제 목록 GET 요청
  @GET("/api/report")
  Future<List<ReportSummary>> getReports();

  @GET("/api/report/{id}")
  Future<Report> getReportById(@Path("id") String id);
}
