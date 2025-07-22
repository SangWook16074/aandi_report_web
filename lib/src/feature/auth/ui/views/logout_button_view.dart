import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_event.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

class LogoutButtonView extends ConsumerWidget {
  const LogoutButtonView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authViewModel = ref.read(authViewModelProvider.notifier);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: () async {
          authViewModel.onEvent(SignOut());
          if (context.mounted) {
            context.go('/sign-in');
          }
        },
        child: Icon(
          Icons.exit_to_app,
          color: Color(0xffff0000),
        ),
      ),
    );
  }
}
