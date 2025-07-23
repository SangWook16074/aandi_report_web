import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_state.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ErrorMessageView extends ConsumerWidget {
  const ErrorMessageView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final errorMsg = ref
        .watch(loginUiViewModelProvider.select((it) => (it as Idle).errorMsg));
    return Text(
      errorMsg,
      style: TextStyle(color: Color(0xffff0000)),
    );
  }
}
