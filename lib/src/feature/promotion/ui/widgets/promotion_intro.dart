import 'dart:ui';

import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/animate_on_visible.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/growth_together_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PromotionIntro extends StatelessWidget {
  const PromotionIntro({super.key});

  @override
  Widget build(BuildContext context) {
    // final isTablet = ResponsiveLayout.isTablet(context);
    final isMobile = ResponsiveLayout.isMobile(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            // 사용 가능한 너비에 따라 크기 조정
            final availableWidth = constraints.maxWidth;
            final shouldScale = availableWidth < 1024;
            final scaleFactor = shouldScale ? availableWidth / 1024 : 1.0;

            final textWidget = AnimateOnVisible(
              uniqueKey: 'intro_text',
              delay: 600.ms,
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(children: [
                  TextSpan(
                    text: "A&I",
                  style: TextStyle(
                    fontSize: 70 * scaleFactor,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xff3B83F6),
                    height: 1.2,
                  ),
                ),
                TextSpan(
                  text: "는\n",
                  style: TextStyle(
                    fontSize: 70 * scaleFactor,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
                TextSpan(
                  text: "개발을 좋아하는\n",
                  style: TextStyle(
                    fontSize: 58 * scaleFactor,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
                TextSpan(
                  text: "사람들이 모여\n",
                  style: TextStyle(
                    fontSize: 58 * scaleFactor,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
                TextSpan(
                  text: "지식을 공유하고\n",
                  style: TextStyle(
                    fontSize: 58 * scaleFactor,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
                TextSpan(
                  text: "함께 성장",
                  style: TextStyle(
                    fontSize: 58 * scaleFactor,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
                TextSpan(
                  text: "합니다.",
                  style: TextStyle(
                    fontSize: 58 * scaleFactor,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    height: 1.2,
                  ),
                  ),
                ]),
              ),
            );

            final underlineWidget = AnimateOnVisible(
              uniqueKey: 'intro_underline',
              delay: 600.ms,
              child: Container(
                width: 400 * scaleFactor,
                height: 5.0,
                decoration: BoxDecoration(
                    color:
                        const Color(0xff3B83F6).withAlpha((255 * 0.3).toInt())),
              ),
            );

            final graphWidget = AnimateOnVisible(
              uniqueKey: 'intro_graph',
              delay: 600.ms,
              duration: 1000.ms,
              child: SizedBox(
                width: 500 * scaleFactor,
                child: GrowthTogetherWidget(
                  primaryStrokeWidth: 20 * scaleFactor,
                  secondaryStrokeWidth: 15 * scaleFactor,
                ),
              ),
            );

            return ConstrainedBox(
              constraints: BoxConstraints(maxWidth: availableWidth),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textWidget,
                            underlineWidget,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: (100) * scaleFactor,
                      ),
                      Flexible(child: graphWidget),
                    ],
                  ),
                  SizedBox(height: (70) * scaleFactor),
                  AnimateOnVisible(
                    uniqueKey: 'intro_description',
                    delay: 600.ms,
                    duration: 1000.ms,
                    child: Text(
                      '문법부터 협업, 실제 프로젝트까지 함께하며\n국내 유명 부트캠프 합격생도 배출해내는 업적을\n이뤄냈습니다.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20 * scaleFactor,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                        height: 1.6,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
