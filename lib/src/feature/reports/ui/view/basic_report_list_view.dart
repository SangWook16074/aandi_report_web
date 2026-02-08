import 'package:a_and_i_report_web_server/src/core/extensions/report_type_filter_extension.dart';
import 'package:a_and_i_report_web_server/src/core/extensions/week_filter_extension.dart';
import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_type.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/viewModel/report_list_view_model.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/widgets/report_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BasicReportListView extends ConsumerWidget {
  const BasicReportListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reportListAsync = ref.watch(reportListViewModelProvider);

    return reportListAsync.when(
      data: (reportListState) {
        final basicReports =
            reportListState.reports.getReportsAtType(type: ReportType.BASIC);

        if (basicReports.isEmpty) {
          return const SizedBox(
            height: 153,
            width: 1000,
            child: Center(
              child: Text(
                "아직 과정이 준비되지 않았습니다.",
                style: TextStyle(
                  color: Color(0xffAFAFAF),
                  fontSize: 15,
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
              final reports =
                  reportListState.reports.getReportsAtWeek(week: index + 1);
              if (reports.isEmpty) {
                return Container();
              } else {
                return ReportListWidget(
                    label: "${index + 1}주차 과제", reports: reports);
              }
            }),
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stack) => Center(
        child: Text(
          '오류가 발생했습니다: ${error.toString()}',
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
