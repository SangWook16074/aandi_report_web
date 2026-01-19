import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PromotionIntro extends StatelessWidget {
  const PromotionIntro({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/growth_step.webp"), context);

    final isMobile = ResponsiveLayout.isTablet(context);
    return Container(
      width: double.infinity,
      height: double.infinity, // 전체 화면 높이 채움

      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            Color(0xff131313),
            Color(0xff181818),
          ])),

      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [Colors.red, Colors.transparent],
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                "assets/growth_step.webp",
                fit: BoxFit.cover,
                alignment: Alignment.centerRight,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 80),
            child: Center(
              child: ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxWidth: 1000), // 최대 너비 제한 축소
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // 수직 중앙 정렬
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "A&I",
                                  style: TextStyle(
                                    fontSize: isMobile ? 50 : 100, // 축소
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.4,
                                  ),
                                ),
                                TextSpan(
                                  text: "는\n",
                                  style: TextStyle(
                                    fontSize: isMobile ? 50 : 100, // 축소
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.4,
                                  ),
                                ),
                                TextSpan(
                                  text: "개발을 좋아하는 사람들",
                                  style: TextStyle(
                                    fontSize: isMobile ? 25 : 58, // 축소
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.4,
                                  ),
                                ),
                                TextSpan(
                                  text: "이 모여\n",
                                  style: TextStyle(
                                    fontSize: isMobile ? 25 : 58, // 축소
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.4,
                                  ),
                                ),
                                TextSpan(
                                  text: "지식을 공유하고 ",
                                  style: TextStyle(
                                    fontSize: isMobile ? 25 : 58, // 축소
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.4,
                                  ),
                                ),
                                TextSpan(
                                  text: "함께 성장",
                                  style: TextStyle(
                                    fontSize: isMobile ? 25 : 58, // 축소
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.4,
                                  ),
                                ),
                                TextSpan(
                                  text: "합니다.",
                                  style: TextStyle(
                                    fontSize: isMobile ? 25 : 58, // 축소
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    height: 1.4,
                                  ),
                                ),
                              ]))
                          .animate()
                          .fadeIn(duration: 600.ms, delay: 600.ms)
                          .moveY(begin: 20, end: 0),
                      Container(
                        width: isMobile ? 270.0 : 630.0,
                        height: 2.0,
                        decoration: BoxDecoration(color: Color(0xffffffff)),
                      )
                          .animate()
                          .fadeIn(duration: 600.ms, delay: 600.ms)
                          .moveY(begin: 20, end: 0),
                      SizedBox(height: isMobile ? 50 : 100),
                      Text(
                        '문법부터 협업, 실제 프로젝트까지 함께하며\n국내 유명 부트캠프 합격생도 배출해내는 업적을\n이뤄냈습니다.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: isMobile ? 15 : 30, // 축소
                          fontWeight: FontWeight.w700,
                          color: Colors.white70,
                          height: 1.6,
                        ),
                      )
                          .animate()
                          .fadeIn(duration: 1000.ms, delay: 600.ms)
                          .moveY(begin: 30, end: 0),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
