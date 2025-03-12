import 'package:a_and_i_report_web_server/src/ui/reports/widgets/report_level_widget.dart';
import 'package:flutter/material.dart';

class ReportTitleRow extends StatelessWidget {
  final String title;
  const ReportTitleRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff000000),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const ReportLevelWidget(level: ReportLevel.low),
        ],
      ),
    );
  }
}
