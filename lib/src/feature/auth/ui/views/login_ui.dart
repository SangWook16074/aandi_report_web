import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_state.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_view_model.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginUI extends ConsumerWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginUiViewModelProvider);
    return Scaffold(
      body: Center(
        child: switch (state) {
          Idle() => LoginView(),
          Loading() => CircularProgressIndicator.adaptive(),
        },
      ),
    );
  }
}
