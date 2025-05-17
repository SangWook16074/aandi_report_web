import 'package:a_and_i_report_web_server/src/feature/home/ui/views/basic_report_list_view.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/widgets/report_header_widget.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/widgets/triangle_point.dart';
import 'package:flutter/material.dart';

class BasicReportView extends StatelessWidget {
  const BasicReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffffffff),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.25),
              offset: const Offset(0, 1),
              blurRadius: 5,
              spreadRadius: 0,
            )
          ]),
      child: Column(
        children: [
          _header(),
          _steps(),
        ],
      ),
    );
  }

  Widget _header() => const Padding(
        padding: EdgeInsets.symmetric(vertical: 13.5),
        child: Row(
          children: [
            TrianglePoint(),
            SizedBox(
              width: 30,
            ),
            ReportHeaderWidget(label: "BASIC 과정"),
          ],
        ),
      );

  Widget _steps() => const BasicReportListView();
}
