import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_list_state.freezed.dart';

/// 과제 목록 뷰 모델의 모델
///
/// 초기 상태는 빈 목록
@freezed
sealed class ReportListState with _$ReportListState {
  const factory ReportListState({
    @Default([]) List<ReportSummary> reports,
    @Default("") String errorMsg,
  }) = _ReportListState;
}
