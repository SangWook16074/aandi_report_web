import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PromotionHero extends StatelessWidget {
  const PromotionHero({super.key});

  Future<void> _launchUrl() async {
    // TODO: 실제 구글폼 URL로 교체 필요
    final Uri url = Uri.parse('https://forms.google.com/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black, // 강렬한 배경
      padding: const EdgeInsets.symmetric(vertical: 140, horizontal: 40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: RepaintBoundary(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 로고
                Image.asset(
                  'assets/logo.png',
                  height: 140, // 1.75x
                )
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .scale(delay: 200.ms, curve: Curves.easeOutBack),
                const SizedBox(height: 50),

                // 메인 타이틀
                const Text(
                  'A&I 4기 신규 동아리원 모집',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 64, // 1.75x
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.3,
                  ),
                )
                    .animate()
                    .fadeIn(delay: 400.ms, duration: 600.ms)
                    .moveY(begin: 30, end: 0),
                const SizedBox(height: 28),

                // 서브 타이틀
                const Text(
                  '개발을 통해 함께 성장할 여러분을 기다립니다!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32, // 1.75x
                    color: Colors.white70,
                  ),
                )
                    .animate()
                    .fadeIn(delay: 600.ms, duration: 600.ms)
                    .moveY(begin: 30, end: 0),
                const SizedBox(height: 42),

                // 모집 기간
                const Text(
                  '2026.02.16 (월) ~ 03.15 (일)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28, // 1.75x
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ).animate().fadeIn(delay: 800.ms, duration: 600.ms),

                const SizedBox(height: 70),

                // CTA 버튼
                ElevatedButton(
                  onPressed: _launchUrl,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 52, vertical: 26), // 1.75x
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(44), // 1.75x
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    '지금 지원하기',
                    style: TextStyle(
                      fontSize: 28, // 1.75x
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
