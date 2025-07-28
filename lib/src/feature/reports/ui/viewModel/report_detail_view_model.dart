import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_state.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/providers/get_report_detail_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/viewModel/report_detail_event.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/viewModel/report_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'report_detail_view_model.g.dart';

@riverpod
class ReportDetailViewModel extends _$ReportDetailViewModel {
  @override
  Future<ReportDatailState> build(String id) async {
    final report = await ref.read(getReportDetailUsecaseProvider).call(id);
    return ReportDatailState(report: report);
  }
}
