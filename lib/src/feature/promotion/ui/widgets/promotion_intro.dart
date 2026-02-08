import 'dart:ui';

import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/growth_together_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PromotionIntro extends StatelessWidget {
  const PromotionIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isTablet(context);

    return Center(
      child: IntrinsicWidth(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 수직 중앙 정렬
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(children: [
                              TextSpan(
                                text: "A&I",
                                style: TextStyle(
                                  fontSize: isMobile ? 30 : 70, // 축소
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff3B83F6),
                                  height: 1.2,
                                ),
                              ),
                              TextSpan(
                                text: "는\n",
                                style: TextStyle(
                                  fontSize: isMobile ? 30 : 70, // 축소
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  height: 1.2,
                                ),
                              ),
                              TextSpan(
                                text: "개발을 좋아하는\n",
                                style: TextStyle(
                                  fontSize: isMobile ? 25 : 58, // 축소
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  height: 1.2,
                                ),
                              ),
                              TextSpan(
                                text: "사람들이 모여\n",
                                style: TextStyle(
                                  fontSize: isMobile ? 25 : 58, // 축소
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  height: 1.2,
                                ),
                              ),
                              TextSpan(
                                text: "지식을 공유하고\n",
                                style: TextStyle(
                                  fontSize: isMobile ? 25 : 58, // 축소
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  height: 1.2,
                                ),
                              ),
                              TextSpan(
                                text: "함께 성장",
                                style: TextStyle(
                                  fontSize: isMobile ? 25 : 58, // 축소
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  height: 1.2,
                                ),
                              ),
                              TextSpan(
                                text: "합니다.",
                                style: TextStyle(
                                  fontSize: isMobile ? 25 : 58, // 축소
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  height: 1.2,
                                ),
                              ),
                            ]))
                        .animate()
                        .fadeIn(duration: 600.ms, delay: 600.ms)
                        .moveY(begin: 20, end: 0),
                    Container(
                      width: isMobile ? 180.0 : 400.0,
                      height: 5.0,
                      decoration: BoxDecoration(
                          color:
                              Color(0xff3B83F6).withAlpha((255 * 0.3).toInt())),
                    )
                        .animate()
                        .fadeIn(duration: 600.ms, delay: 600.ms)
                        .moveY(begin: 20, end: 0),
                  ],
                ),
                SizedBox(
                  width: isMobile ? 40 : 100,
                ),
                SizedBox(
                  width: isMobile ? 200 : 500,
                  child: GrowthTogetherWidget(
                    primaryStrokeWidth: isMobile ? 8 : 20,
                    secondaryStrokeWidth: isMobile ? 5 : 15,
                  )
                      .animate()
                      .fadeIn(duration: 1000.ms, delay: 600.ms)
                      .moveY(begin: 30, end: 0),
                ),
              ],
            ),
            SizedBox(height: isMobile ? 50 : 70),
            Text(
              '문법부터 협업, 실제 프로젝트까지 함께하며\n국내 유명 부트캠프 합격생도 배출해내는 업적을\n이뤄냈습니다.',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: isMobile ? 15 : 20, // 축소
                fontWeight: FontWeight.w500,
                color: Colors.white70,
                height: 1.6,
              ),
            )
                .animate()
                .fadeIn(duration: 1000.ms, delay: 600.ms)
                .moveY(begin: 30, end: 0),
          ],
        ),
      ),
    );
  }
}
