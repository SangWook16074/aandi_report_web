import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';

class PromotionHero extends StatelessWidget {
  const PromotionHero({super.key});

  Future<void> _launchUrl() async {
    // TODO: 실제 구글폼 URL로 교체 필요
    final Uri url = Uri.parse(
        'https://docs.google.com/forms/d/e/1FAIpQLSdIXB0FxwJaQw6f-vpf5mYBxNMlJs2PII_0UQo31n3As2PgyA/viewform?usp=header');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);

    return Container(
      width: double.infinity,
      height: double.infinity, // 전체 화면
      // color: Colors.black, // 강렬한 배경
      decoration: BoxDecoration(
          color: Color(0xff000000),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Color(0xff000000).withAlpha(150), BlendMode.darken),
              image: AssetImage(
                "assets/promotion_bg.png",
              ),
              fit: BoxFit.fitWidth)),
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: RepaintBoundary(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // 중앙 정렬
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                // 메인 타이틀
                Text(
                  'A&I 4기 신규 동아리원 모집',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile ? 32 : 48, // 반응형 폰트 크기
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.3,
                  ),
                )
                    .animate()
                    .fadeIn(delay: 400.ms, duration: 600.ms)
                    .moveY(begin: 30, end: 0),
                const SizedBox(height: 20),

                // 서브 타이틀
                Text(
                  '개발을 통해 함께 성장할 여러분을 기다립니다!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile ? 16 : 24, // 반응형 폰트 크기
                    color: Colors.white70,
                  ),
                )
                    .animate()
                    .fadeIn(delay: 600.ms, duration: 600.ms)
                    .moveY(begin: 30, end: 0),
                const SizedBox(height: 30),

                // 모집 기간
                Text(
                  '2026.02.16 (월) ~ 03.15 (일)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile ? 18 : 24, // 반응형 폰트 크기
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ).animate().fadeIn(delay: 800.ms, duration: 600.ms),

                const SizedBox(height: 50),

                // CTA 버튼
                ElevatedButton(
                  onPressed: _launchUrl,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 30 : 40,
                        vertical: isMobile ? 16 : 20), // 반응형 패딩
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    '지금 지원하기',
                    style: TextStyle(
                      fontSize: isMobile ? 16 : 20, // 반응형 폰트 크기
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
                    .animate()
                    .fadeIn(delay: 1000.ms, duration: 600.ms)
                    .shimmer(delay: 1500.ms, duration: 1000.ms),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
