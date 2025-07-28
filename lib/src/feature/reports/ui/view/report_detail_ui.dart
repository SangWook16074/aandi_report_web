import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/report_detail_view.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/viewModel/report_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReportDetailUI extends HookConsumerWidget {
  final String id;
  const ReportDetailUI({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(reportDetailViewModelProvider(id));

    return Scaffold(
      body: switch (state) {
        AsyncData(:final value) => SingleChildScrollView(
            child: ResponsiveLayout(
              mobile: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ReportDetailView(
                  report: value.report,
                ),
              ),
              tablet: Padding(
                padding: EdgeInsets.only(
                    top: 100, left: 100, right: 100, bottom: 15),
                child: ReportDetailView(
                  report: value.report,
                ),
              ),
              desktop: Padding(
                padding: EdgeInsets.only(
                    top: 100, left: 200, right: 200, bottom: 15),
                child: ReportDetailView(
                  report: value.report,
                ),
              ),
            ),
          ),
        AsyncError() => Center(
            child: Text("에러가 발생했습니다!"),
          ),
        _ => Center(
            child: CircularProgressIndicator.adaptive(),
          )
      },
    );
  }
}
