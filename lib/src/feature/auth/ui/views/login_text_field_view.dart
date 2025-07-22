import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_event.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginTextFieldView extends HookConsumerWidget {
  const LoginTextFieldView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginUiViewModel = ref.read(loginUiViewModelProvider.notifier);
    final accountController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Column(
      children: [
        TextField(
          controller: accountController,
          cursorColor: const Color(0xff000000),
          decoration: const InputDecoration(
            focusColor: Color(0xff000000),
            prefixIcon: Icon(
              Icons.account_circle_outlined,
              color: Color(0xff000000),
            ),
            hintText: "계정",
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color(0xff000000))),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color(0xffd9d9d9))),
          ),
          onChanged: (userId) {
            final event = UserAccountInput(userId: userId);
            loginUiViewModel.onEvent(event);
          },
        ),
        TextField(
          controller: passwordController,
          cursorColor: const Color(0xff000000),
          obscureText: true,
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: Color(0xff000000),
            ),
            hintText: "비밀번호",
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color(0xff000000))),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color(0xffd9d9d9))),
          ),
          onChanged: (password) {
            final event = UserPasswordInput(password: password);
            loginUiViewModel.onEvent(event);
          },
        ),
      ],
    );
  }
}
