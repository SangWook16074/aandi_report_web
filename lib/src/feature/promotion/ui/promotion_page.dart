import 'package:flutter/material.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_hero.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_intro.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_mentors.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_curriculum.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_schedule.dart';

class PromotionPage extends StatelessWidget {
  const PromotionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // 전체 배경색 통일
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PromotionHero(),
            const PromotionIntro(),
            const PromotionMentors(),
            const PromotionCurriculum(),
            const PromotionSchedule(),
          ],
        ),
      ),
    );
  }
}
