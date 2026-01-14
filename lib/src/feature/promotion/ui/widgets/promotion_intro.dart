import 'package:flutter/material.dart';

class PromotionIntro extends StatelessWidget {
  const PromotionIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 140, horizontal: 40),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'A&I는 개발을 좋아하는 사람들이 모여\n지식을 공유하고 함께 성장하는 문화를 만들어갑니다.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 38, // 1.75x
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                '멘토 주도로 기본적인 코딩 문법부터 협업 프로세스 및 프로젝트를 수행해왔고,\n' 
                '국내 유명 부트캠프 합격생도 배출해내는 업적을 이뤄왔습니다.\n\n' 
                '현직자와 국내 유명 부트캠프 출신 운영진이 운영하는 A&I 에서\n' 
                '동아리를 빛내주실 분을 찾고 있습니다!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28, // 1.75x
                  color: Colors.black54,
                  height: 1.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
