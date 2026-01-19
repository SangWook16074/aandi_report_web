import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

/// 사이트 로고 위젯
class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = ResponsiveLayout.isMobile(context) ? 90 : 120;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22.5),
      child: Container(
          padding: const EdgeInsets.all(10.0),
          width: width,
          height: width,
          decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.25),
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0)
              ]),
          alignment: Alignment.center,
          child: SizedBox(
            width: 200,
            child: Image.asset("assets/logo.webp"),
          )),
    );
  }
}
