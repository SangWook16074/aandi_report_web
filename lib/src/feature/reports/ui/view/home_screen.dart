import 'package:a_and_i_report_web_server/src/core/widgets/bottom_logo.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/logo.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/home_header_view.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/basic_report_view.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/cs_report_view.dart';
import 'package:flutter/material.dart';

/// 사이트 홈 UI
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // 사이트 로고
        _logo(),

        // 사이트 헤더 영역
        _header(),
        const SizedBox(
          height: 20,
        ),
        // CS 과제 목록
        _csReports(),
        const SizedBox(
          height: 20,
        ),

        // BASIC 과정 과제 목록
        _basicReports(),
        const SizedBox(
          height: 100,
        ),

        // 사이트 하단 로고
        _bottom(),
      ],
    );
  }

  /// 사이트 로고
  Widget _logo() => const Padding(
        padding: EdgeInsets.symmetric(vertical: 22.5),
        child: Logo(),
      );

  /// 사이트 헤더 영역
  ///
  /// 현재는 과제 개요 텍스트가 렌더링됨.
  Widget _header() => const HomeHeaderView();

  /// CS 과제 목록
  ///
  /// 서버로부터 요청한 과제 중 CS 과제 목록을 보여줌.
  Widget _csReports() => const CsReportView();

  /// BASIC 과정 과제 목록
  ///
  /// 서버로부터 요청한 과제 중 BASIC 과제 목록을 보여줌.
  Widget _basicReports() => const BasicReportView();

  /// 앱 사이트 하단 로고
  Widget _bottom() => const BottomLogo();
}
