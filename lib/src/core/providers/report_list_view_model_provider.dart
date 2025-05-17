import 'package:a_and_i_report_web_server/src/core/providers/report_repository_provider.dart';
import 'package:a_and_i_report_web_server/src/core/providers/report_summary_repository_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/home/ui/viewModels/report_list_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 과제 목록 뷰 모델 프로바이더
final reportListViewModelProvider = ChangeNotifierProvider(
    (ref) => ReportListViewModel(ref.read(reportSummaryRepositoryProvider)));
