import 'package:a_and_i_report_web_server/src/core/providers/report_detail_view_model_provider.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/bottom_logo.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/viewModel/report_detail_state.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/content_io_view.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/content_list_view.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/sub_title_view.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/widgets/report_level_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ReportDetailView extends ConsumerWidget {
  const ReportDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(reportDetailViewModelProvider);
    final report = (viewModel.state as LoadedState).report;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.25),
                  offset: const Offset(0, 1),
                  blurRadius: 5,
                  spreadRadius: 0,
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 17.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        report.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "난이도",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        ReportLevelWidget(level: report.level),
                      ],
                    )
                  ],
                ),
              ),
              const SubTitleView(label: "문제 설명"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        report.content,
                        style: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              const SubTitleView(label: "문제 요구 사항"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    ContentListView(
                        contents: report.requirement
                            .map((req) => req.content)
                            .toList())
                  ],
                ),
              ),
              const SubTitleView(label: "학습 정리 목표"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    ContentListView(
                        contents:
                            report.objects.map((obj) => obj.content).toList())
                  ],
                ),
              ),
              const SubTitleView(label: "예제 입출력"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ContentIOView(
                    contents: report.exampleIo
                        .map((io) => (io.input, io.output))
                        .toList()),
              ),
              const SubTitleView(label: "과제 제출 방법"),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Text(
                      "Slack 채널에 본인의 제출 내용을 링크로 제출해주세요!",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: ResponsiveLayout.isMobile(context) ? 50 : 200,
        ),
        const BottomLogo()
      ],
    );
  }
}
