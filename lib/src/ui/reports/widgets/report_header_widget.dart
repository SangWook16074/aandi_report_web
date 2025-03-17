import 'package:a_and_i_report_web_server/src/ui/common/view/responsive_layout.dart';
import 'package:flutter/material.dart';

class ReportHeaderWidget extends StatelessWidget {
  final String label;
  const ReportHeaderWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
            color: const Color(0xff000000),
            fontSize: ResponsiveLayout.isMobile(context) ? 18 : 30,
            fontWeight: FontWeight.bold));
  }
}
