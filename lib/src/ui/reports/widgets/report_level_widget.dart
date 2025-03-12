import 'package:flutter/material.dart';

enum ReportLevel {
  low("하", Color(0xffd0d0d0)),
  medium("중", Color(0xffDAFFD3)),
  high("상", Color(0xffFFFDCC));

  final String label;
  final Color color;
  const ReportLevel(this.label, this.color);
}

class ReportLevelWidget extends StatelessWidget {
  final ReportLevel level;
  const ReportLevelWidget({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 81,
      child: Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: level.color, shape: BoxShape.circle),
        child: Text(
          level.label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
