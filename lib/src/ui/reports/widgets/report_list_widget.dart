import 'package:a_and_i_report_web_server/src/data/reports/entity/report.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/widgets/report_status_widget.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/widgets/report_title_row.dart';
import 'package:flutter/material.dart';

// 전달받은 과제목록 렌더링
class ReportListWidget extends StatelessWidget {
  final String label;
  final List<Report> reports;
  const ReportListWidget(
      {super.key, required this.label, required this.reports});

  @override
  Widget build(BuildContext context) {
    return (reports.isNotEmpty)
        // 과제 뷰
        ? Column(
            children: [_label(), _reports()],
          )
        // 빈 과제 뷰
        : _empty();
  }

  // 빈 과제 뷰
  Widget _empty() => const SizedBox(
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

  //
  Widget _label() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 13.5, horizontal: 20.0),
        child: Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 30,
            ),
            const ReportStatus(type: ReportStatueType.done),
          ],
        ),
      );

  Widget _reports() => Column(
        children:
            List.generate(reports.length, (index) => const ReportTitleRow()),
      );
}
