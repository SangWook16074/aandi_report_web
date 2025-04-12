import 'package:a_and_i_report_web_server/src/core/extensions/week_filter_extension.dart';
import 'package:a_and_i_report_web_server/src/core/extensions/report_type_filter_extension.dart';
import 'package:a_and_i_report_web_server/src/core/providers/report_list_view_model_provider.dart';
import 'package:a_and_i_report_web_server/src/data/reports/enums/report_type.dart';
import 'package:a_and_i_report_web_server/src/ui/common/view/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/widgets/report_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// CS 과제 목록 뷰
class CsReportListView extends ConsumerWidget {
  const CsReportListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(reportListViewModelProvider);
    final csReports =
        viewModel.state.reports.getReportsAtType(type: ReportType.CS);

    if (viewModel.state.errorMsg.isNotEmpty) {
      return SizedBox(
        height: 153,
        width: 1000,
        child: Center(
          child: Text(
            viewModel.state.errorMsg,
            style: const TextStyle(
              color: Color(0xffAFAFAF),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    if (csReports.isEmpty) {
      return SizedBox(
        height: 153,
        width: 1000,
        child: Center(
          child: Text(
            "아직 과정이 준비되지 않았습니다.",
            style: TextStyle(
              color: const Color(0xffAFAFAF),
              fontSize: ResponsiveLayout.isMobile(context) ? 13 : 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: List.generate(10, (index) {
          final reports = csReports.getReportsAtWeek(week: index + 1);

          if (reports.isEmpty) {
            return Container();
          } else {
            return ReportListWidget(
                label: "${index + 1}주차 과제", reports: reports);
          }
        }),
      ),
    );
  }
}
