import 'package:a_and_i_report_web_server/src/ui/auth/view/login_view.dart';
import 'package:flutter/material.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LoginView(),
      ),
    );
  }
}
