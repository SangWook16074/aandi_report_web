import 'package:flutter/material.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_hero.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_intro.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_mentors.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_curriculum.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_schedule.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 각 섹션이 화면 높이만큼 차지하도록 설정
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black, // 전체 배경색 통일
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight,
              child: const PromotionHero(),
            ),
            SizedBox(
              height: screenHeight,
              child: const PromotionIntro(),
            ),
            SizedBox(
              height: screenHeight,
              child: const PromotionMentors(),
            ),
            SizedBox(
              height: screenHeight,
              child: const PromotionCurriculum(),
            ),
            SizedBox(
              height: screenHeight,
              child: const PromotionSchedule(),
            ),
          ],
        ),
      ),
    );
  }
}
