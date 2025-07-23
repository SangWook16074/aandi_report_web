import 'package:a_and_i_report_web_server/src/feature/home/data/entities/level.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/widgets/report_level_widget.dart';
import 'package:flutter/material.dart';

class ReportTitleView extends StatelessWidget {
  final String title;
  final Level level;
  const ReportTitleView({
    super.key,
    required this.title,
    required this.level,
  });

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
          ReportLevelWidget(level: level),
        ],
      ),
    );
  }
}
