import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_summary.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/data/entities/report.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'report_repository.g.dart';

/// 과제 레포지토리
@RestApi(baseUrl: "https://aandi-dev.xyz")
abstract class ReportRepository {
  factory ReportRepository(Dio dio, {String baseUrl}) = _ReportRepository;

  @GET("/api/report/{id}")
  Future<Report> getReportDetailById(@Path("id") String id);
}
