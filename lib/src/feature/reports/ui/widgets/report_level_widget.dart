import 'package:a_and_i_report_web_server/src/feature/home/data/entities/level.dart';
import 'package:flutter/material.dart';

class ReportLevelWidget extends StatelessWidget {
  final Level level;
  const ReportLevelWidget({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    switch (level) {
      case Level.VERYHIGH:
        return _basic(color: const Color(0xffFFCCCD));
      case Level.HIGH:
        return _basic(color: const Color(0xffFFFDCC));
      case Level.MEDIUM:
        return _basic(color: const Color(0xffDAFFD3));
      case Level.LOW:
        return _basic(color: const Color(0xffd0d0d0));
    }
  }

  Widget _basic({
    required Color color,
  }) =>
      SizedBox(
        width: 81,
        child: Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Text(
            level.desc,
            style: const TextStyle(
                color: Color(0xff404040),
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      );
}
