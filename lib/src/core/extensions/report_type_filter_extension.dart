import 'package:a_and_i_report_web_server/src/data/reports/entity/report.dart';

/// 과제 종류별 필터 extension
extension ReportTypeFilter on List<Report> {
  List<Report> getReportsAtType({
    required ReportType type,
  }) {
    return where((report) => report.reportType == type).toList();
  }
}
