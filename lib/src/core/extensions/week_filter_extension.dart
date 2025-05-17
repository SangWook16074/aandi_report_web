import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_summary.dart';

/// 과제 주차별 필터 extension
extension WeekFilterExtension on List<ReportSummary> {
  List<ReportSummary> getReportsAtWeek({
    required int week,
  }) {
    return where((report) => report.week == week).toList();
  }
}
