import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

/// 사이트 하단에 렌더링 되는 하단 앱 로고
class BottomLogo extends StatelessWidget {
  const BottomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: ResponsiveLayout.isMobile(context) ? 90 : 120,
            child: Image.asset("assets/logo.png"),
          ),
          const Text(
            "이 사이트는 A&I 회원들을 위한 과제 사이트입니다. ",
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
