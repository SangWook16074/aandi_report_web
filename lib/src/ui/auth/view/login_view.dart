import 'package:a_and_i_report_web_server/src/ui/auth/view/login_button_view.dart';
import 'package:a_and_i_report_web_server/src/ui/auth/view/login_text_field_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                blurRadius: 5.0,
                offset: const Offset(1, 4),
                color: const Color(0xff000000).withAlpha((255 * 0.25).round()))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 120,
            child: Image.asset("assets/logo.png"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: LoginTextFieldView(),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: LoginButtonView(),
          ),
        ],
      ),
    );
  }
}
