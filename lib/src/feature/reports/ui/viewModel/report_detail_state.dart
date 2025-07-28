import 'package:a_and_i_report_web_server/src/feature/reports/data/entities/report.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_detail_state.freezed.dart';

@freezed
sealed class ReportDatailState with _$ReportDatailState {
  const factory ReportDatailState(
      {required Report report,
      @Default("") String errorMsg}) = _ReportDatailState;
}
