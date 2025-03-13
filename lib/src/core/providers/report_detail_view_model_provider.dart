import 'package:a_and_i_report_web_server/src/core/providers/report_repository_provider.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/viewModel/report_detail_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final reportDetailViewModelProvider = ChangeNotifierProvider.autoDispose(
    (ref) => ReportDetailViewModel(ref.read(reportRepositoryProvider)));
