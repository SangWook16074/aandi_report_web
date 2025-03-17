import 'package:a_and_i_report_web_server/src/core/providers/report_detail_view_model_provider.dart';
import 'package:a_and_i_report_web_server/src/ui/common/view/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/model/report_detail_event.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/model/report_detail_state.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/view/error_view.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/view/loading_view.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/view/report_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReportDetailUI extends HookConsumerWidget {
  final String id;
  const ReportDetailUI({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initEvent = ReadReportDatail(id: id);
    final viewModel = ref.watch(reportDetailViewModelProvider);
    viewModel.onEvent(initEvent);
    final state = viewModel.state;
    return switch (state) {
      LoadingState() => const LoadingView(),
      ErrorState() => const ErrorView(),
      LoadedState() => const Scaffold(
          body: SingleChildScrollView(
            child: ResponsiveLayout(
              mobile: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ReportDetailView(),
              ),
              tablet: Padding(
                padding: EdgeInsets.only(
                    top: 100, left: 100, right: 100, bottom: 15),
                child: ReportDetailView(),
              ),
              desktop: Padding(
                padding: EdgeInsets.only(
                    top: 100, left: 200, right: 200, bottom: 15),
                child: ReportDetailView(),
              ),
            ),
          ),
        ),
    };
  }
}
