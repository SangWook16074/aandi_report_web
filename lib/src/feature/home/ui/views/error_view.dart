import 'package:a_and_i_report_web_server/src/core/providers/report_detail_view_model_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/viewModel/report_detail_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ErrorView extends ConsumerWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(reportDetailViewModelProvider.notifier);
    final state = viewModel.state as ErrorState;
    return Scaffold(
      body: Center(
        child: Text(
          state.errorMsg,
          style: const TextStyle(
              color: Color(0xff373737),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
