import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

/// 홈 UI 상단 헤더 영역

class HomeHeaderView extends StatelessWidget {
  const HomeHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.25),
                  offset: const Offset(0, 1),
                  spreadRadius: 0,
                  blurRadius: 5.0)
            ]),
        child: Text(
          "목차",
          style: TextStyle(
              color: const Color(0xff323232),
              fontSize: ResponsiveLayout.isMobile(context) ? 18 : 34,
              fontWeight: FontWeight.bold),
        ));
  }
}
