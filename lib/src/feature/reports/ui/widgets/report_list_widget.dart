import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_summary.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/widgets/report_status_widget.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/widgets/report_title_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// 전달받은 과제목록 렌더링
class ReportListWidget extends StatelessWidget {
  final String label;
  final List<ReportSummary> reports;
  const ReportListWidget(
      {super.key, required this.label, required this.reports});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_label(), _reports()],
    );
  }

  //
  Widget _label() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Builder(builder: (context) {
              return Text(
                label,
                style: TextStyle(
                    color: const Color(0xff000000),
                    fontSize: ResponsiveLayout.isMobile(context) ? 18 : 22,
                    fontWeight: FontWeight.w600),
              );
            }),
            const SizedBox(
              width: 30,
            ),
            ReportStatus(type: ReportStatueType.fromEndAt(reports[0].endAt)),
          ],
        ),
      );

  Widget _reports() => Column(
        children: List.generate(
            reports.length,
            (index) => Builder(builder: (context) {
                  return InkWell(
                    onTap: () => context.go("/report/${reports[index].id}"),
                    child: ReportTitleRow(
                      reportSummary: reports[index],
                    ),
                  );
                })),
      );
}
