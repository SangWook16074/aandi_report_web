import 'package:a_and_i_report_web_server/src/data/reports/entity/report.dart';

/// 과제 주차별 필터 extension
extension WeekFilterExtension on List<Report> {
  List<Report> getReportsAtWeek({
    required int week,
  }) {
    return where((report) => report.week == week).toList();
  }
}
