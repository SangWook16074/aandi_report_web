import 'package:a_and_i_report_web_server/src/data/reports/enums/level.dart';
import 'package:a_and_i_report_web_server/src/data/reports/enums/report_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_summary.freezed.dart';
part 'report_summary.g.dart';

@freezed
sealed class ReportSummary with _$ReportSummary {
  factory ReportSummary({
    required String id,
    required int week,
    required int seq,
    required String title,
    required Level level,
    required ReportType reportType,
  }) = _ReportSummary;

  factory ReportSummary.fromJson(Map<String, dynamic> json) =>
      _$ReportSummaryFromJson(json);
}
