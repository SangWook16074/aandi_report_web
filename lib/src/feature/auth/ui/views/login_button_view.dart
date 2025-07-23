import 'dart:developer';

import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_event.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_view_model.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_event.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_state.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginButtonView extends ConsumerWidget {
  const LoginButtonView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginUiState = ref.watch(loginUiViewModelProvider);
    final loginUiViewModel = ref.read(loginUiViewModelProvider.notifier);
    final authViewModel = ref.read(authViewModelProvider.notifier);
    return InkWell(
      onTap: () async {
        /// 버튼 탭 시
        /// 로그인 진행
        try {
          final account = (loginUiState as Idle).userId;
          final password = loginUiState.password;
          loginUiViewModel.onEvent(Login());
          await authViewModel
              .onEvent(SignIn(account: account, password: password));
        } catch (e) {
          log(e.toString());
          loginUiViewModel.onEvent(LoginFail(errorMsg: e.toString()));
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff373737)),
        child: const Text(
          "로그인",
          style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
