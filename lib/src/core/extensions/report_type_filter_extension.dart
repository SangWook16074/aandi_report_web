import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_summary.dart';
import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_type.dart';

/// 과제 종류별 필터 extension
extension ReportTypeFilter on List<ReportSummary> {
  List<ReportSummary> getReportsAtType({
    required ReportType type,
  }) {
    return where((report) => report.reportType == type).toList();
  }
}
