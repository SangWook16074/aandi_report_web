import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PromotionIntro extends StatelessWidget {
  const PromotionIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity, // 전체 화면 높이 채움

      color: Colors.white,

      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Center(
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000), // 최대 너비 제한 축소
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // 수직 중앙 정렬
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'A&I는 개발을 좋아하는 사람들이 모여\n지식을 공유하고 함께 성장하는 문화를 만들어갑니다.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32, // 축소
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    height: 1.4,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 600.ms, delay: 600.ms)
                    .moveY(begin: 20, end: 0),
                const SizedBox(height: 40),
                Text(
                  '멘토 주도로 기본적인 코딩 문법부터 협업 프로세스 및 프로젝트를 수행해왔고,\n'
                  '국내 유명 부트캠프 합격생도 배출해내는 업적을 이뤄왔습니다.\n\n'
                  '현직자와 국내 유명 부트캠프 출신 운영진이 운영하는 A&I 에서\n'
                  '동아리를 빛내주실 분을 찾고 있습니다!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20, // 축소
                    color: Colors.black54,
                    height: 1.6,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 1000.ms, delay: 600.ms)
                    .moveY(begin: 30, end: 0),
              ],
            )),
      ),
    );
  }
}
