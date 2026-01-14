import 'package:flutter/material.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/fade_in_section.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: const [
            PromotionHero(),
            FadeInSection(
              child: PromotionIntro(),
            ),
            FadeInSection(
              child: PromotionMentors(),
            ),
            FadeInSection(
              child: PromotionCurriculum(),
            ),
            FadeInSection(
              child: PromotionSchedule(),
            ),
          ],
        ),
      ),
    );
  }
}
