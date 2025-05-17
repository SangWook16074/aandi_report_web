import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_summary.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/widgets/report_level_widget.dart';
import 'package:flutter/material.dart';

class ReportTitleRow extends StatelessWidget {
  final ReportSummary reportSummary;
  const ReportTitleRow({
    super.key,
    required this.reportSummary,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            reportSummary.title,
            style: const TextStyle(
              color: Color(0xff000000),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          ReportLevelWidget(level: reportSummary.level),
        ],
      ),
    );
  }
}
