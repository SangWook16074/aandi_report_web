import 'package:a_and_i_report_web_server/src/feature/reports/data/entities/report.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'report_repository.g.dart';

/// 과제 레포지토리
@RestApi()
abstract class ReportRepository {
  factory ReportRepository(Dio dio, {String baseUrl}) = _ReportRepository;

  @GET("/api/report/{id}")
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<Report> getReportDetailById(
      @Path("id") String id, @Header("Authorization") String authorization);
}
