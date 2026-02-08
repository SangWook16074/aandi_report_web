import 'package:a_and_i_report_web_server/src/feature/reports/providers/get_report_detail_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/viewModel/report_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'report_detail_view_model.g.dart';

/// 과제 상세 화면의 상태를 관리하는 ViewModel입니다.
///
/// [AutoDisposeFamilyAsyncNotifier]를 상속받아 구현되었습니다.
/// `family` 수정자를 사용하여 [id] 파라미터를 받아 특정 과제의 상세 정보를 로드합니다.
@riverpod
class ReportDetailViewModel extends _$ReportDetailViewModel {
  /// 특정 [id]의 과제 정보를 로드하여 초기 상태를 설정합니다.
  @override
  Future<ReportDatailState> build(String id) async {
    final report = await ref.read(getReportDetailUsecaseProvider).call(id);
    return ReportDatailState(report: report);
  }
}
