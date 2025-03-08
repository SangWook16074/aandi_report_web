import 'package:flutter/material.dart';

/// 사이트 하단에 렌더링 되는 하단 앱 로고
class BottomLogo extends StatelessWidget {
  const BottomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "A&I",
            style: TextStyle(
                color: Color(0xff425065),
                fontSize: 50,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Application Developer Club",
            style: TextStyle(
                color: Color(0xff425065),
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "이 사이트는 A&I 회원들을 위한 과제 사이트입니다. ",
            style: TextStyle(
                color: Color(0xff425065),
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
