import 'package:a_and_i_report_web_server/src/feature/home/providers/get_report_summary_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/home/ui/viewModels/report_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'report_list_view_model.g.dart';

/// 과제 목록 화면의 상태를 관리하는 ViewModel입니다.
///
/// [AutoDisposeAsyncNotifier]를 상속받아 구현되었습니다.
/// 화면 진입 시 [build] 메서드가 실행되어 과제 목록을 자동으로 로드합니다.
@riverpod
class ReportListViewModel extends _$ReportListViewModel {
  /// 초기 상태를 설정합니다.
  ///
  /// [getReportSummaryUsecaseProvider]를 통해 데이터를 불러옵니다.
  /// 성공 시 [ReportListState]에 목록을 담아 반환하고,
  /// 실패 시 에러 메시지를 담아 반환합니다.
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
