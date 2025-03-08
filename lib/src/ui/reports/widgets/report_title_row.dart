import 'package:a_and_i_report_web_server/src/ui/reports/widgets/report_level_widget.dart';
import 'package:flutter/material.dart';

class ReportTitleRow extends StatelessWidget {
  const ReportTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.5, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _title(),
          _level(),
        ],
      ),
    );
  }

  Widget _title() => const Text(
        "0-1. Hello World!",
        style: TextStyle(
          color: Color(0xff000000),
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget _level() => const ReportLevelWidget(level: ReportLevel.low);
}
