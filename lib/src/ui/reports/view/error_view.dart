import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "에러가 발생했습니다!",
          style: TextStyle(
              color: Color(0xff373737),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
