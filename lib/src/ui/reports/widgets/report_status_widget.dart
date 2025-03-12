import 'package:flutter/material.dart';

enum ReportStatueType {
  done("종료"),
  progress("진행중");

  final String status;

  const ReportStatueType(this.status);
}

class ReportStatus extends StatelessWidget {
  final ReportStatueType type;
  const ReportStatus({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ReportStatueType.done:
        return _basic(color: const Color(0xffafafaf));
      case ReportStatueType.progress:
        return _basic(color: const Color(0xff7EFF72));
    }
  }

  Widget _basic({
    required Color color,
  }) =>
      Container(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 2, color: color)),
        alignment: Alignment.center,
        child: Text(
          type.status,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      );
}
