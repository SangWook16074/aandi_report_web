import 'package:a_and_i_report_web_server/src/core/providers/report_list_view_model_provider.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/widgets/report_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// CS 과제 목록 뷰
class CsReportListView extends ConsumerWidget {
  const CsReportListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 뷰모델 참조
    final viewModel = ref.watch(reportListViewModelProvider);
    return Column(
      children: [
        ReportListWidget(label: "1주차 과제", reports: viewModel.state.reports),
        // ReportListWidget(label: "2주차 과제"),
      ],
    );
  }
}
