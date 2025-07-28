import 'package:a_and_i_report_web_server/src/feature/home/providers/get_report_summary_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/home/ui/viewModels/report_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'report_list_view_model.g.dart';

/// 과제 목록 뷰 모델
@riverpod
class ReportListViewModel extends _$ReportListViewModel {
  @override
  Future<ReportListState> build() async {
    try {
      final reports = await ref.read(getReportSummaryUsecaseProvider).call();
      return ReportListState(reports: reports);
    } catch (e) {
      return ReportListState(errorMsg: e.toString());
    }
  }
}
