import 'package:flutter/material.dart';

/// 사이트 로고 위젯
class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20.0),
        width: 120,
        height: 120,
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
          child: Image.asset("assets/logo.png"),
        ));
  }
}
