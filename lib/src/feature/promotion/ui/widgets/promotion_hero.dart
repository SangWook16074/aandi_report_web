import 'package:a_and_i_report_web_server/src/feature/promotion/ui/views/apply_button_view.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/promotion_ui_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:visibility_detector/visibility_detector.dart';

class PromotionHero extends ConsumerWidget {
  const PromotionHero({super.key});

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse(
        'https://docs.google.com/forms/d/e/1FAIpQLSdIXB0FxwJaQw6f-vpf5mYBxNMlJs2PII_0UQo31n3As2PgyA/viewform?usp=header');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    precacheImage(
        AssetImage(
          "assets/intro_bg.png",
        ),
        context);

    final isMobile = ResponsiveLayout.isMobile(context);

    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height), // 전체 화면
      // color: Colors.black, // 강렬한 배경
      decoration: BoxDecoration(
          color: Color(0xff000000),
          image: DecorationImage(
              // colorFilter: ColorFilter.mode(
              //     Color(0xff000000).withAlpha(150), BlendMode.darken),
              image: AssetImage(
                "assets/intro_bg.png",
              ),
              fit: BoxFit.cover)),
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: RepaintBoundary(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // 중앙 정렬
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 400),

                // 메인 타이틀
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: '2026 ',
                      style: TextStyle(
                        fontSize: isMobile ? 32 : 58, // 반응형 폰트 크기
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: 'A&I',
                      style: TextStyle(
                        fontSize: isMobile ? 32 : 58, // 반응형 폰트 크기
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff),
                        height: 1.3,
                      ),
                    ),
                    TextSpan(
                      text: ' 신규 동아리원 모집',
                      style: TextStyle(
                        fontSize: isMobile ? 32 : 58, // 반응형 폰트 크기
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.3,
                      ),
                    ),
                  ]),
                )
                    .animate()
                    .fadeIn(delay: 400.ms, duration: 600.ms)
                    .moveY(begin: 30, end: 0),
                const SizedBox(height: 20),

                // 서브 타이틀
                Text(
                  '함께 성장할 여러분을 기다립니다!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile ? 20 : 30, // 반응형 폰트 크기
                    fontWeight: FontWeight.w600,
                    color: Colors.white70,
                  ),
                )
                    .animate()
                    .fadeIn(delay: 600.ms, duration: 600.ms)
                    .moveY(begin: 30, end: 0),
                SizedBox(height: isMobile ? 10 : 20),

                // 모집 기간
                Text(
                  '2026.01.16 - 2026.03.15',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile ? 18 : 24, // 반응형 폰트 크기
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                ).animate().fadeIn(delay: 800.ms, duration: 600.ms),

                SizedBox(height: isMobile ? 50 : 20),

                // CTA 버튼
                VisibilityDetector(
                  key: const Key('hero-apply-button'),
                  onVisibilityChanged: (info) {
                    final visiblePercentage = info.visibleFraction * 100;
                    if (visiblePercentage == 0) {
                      ref
                          .read(heroApplyButtonVisibilityProvider.notifier)
                          .setVisible(false);
                    } else {
                      ref
                          .read(heroApplyButtonVisibilityProvider.notifier)
                          .setVisible(true);
                    }
                  },
                  child: ApplyButtonView()
                      .animate()
                      .fadeIn(delay: 1000.ms, duration: 600.ms),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
