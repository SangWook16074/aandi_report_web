import 'package:flutter/material.dart';

class PromotionSchedule extends StatelessWidget {
  const PromotionSchedule({super.key});

  Widget _buildScheduleItem(String date, String event) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21.0), // 1.75x
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 245, // 1.75x
            child: Text(
              date,
              style: const TextStyle(
                fontSize: 28, // 1.75x
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(width: 42), // 1.75x
          Expanded(
            child: Text(
              event,
              style: const TextStyle(
                fontSize: 28, // 1.75x
                color: Colors.black54,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xfff6f6f6),
      padding: const EdgeInsets.symmetric(vertical: 105, horizontal: 42), // 1.75x
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: const Text(
                  '동아리 모집 및 활동 일정',
                  style: TextStyle(
                    fontSize: 50, // 1.75x
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              _buildScheduleItem(
                '모집 기간',
                '2026년 2월 16일 (월) ~ 3월 15일 (일)',
              ),
              _buildScheduleItem(
                '지원 방법',
                '첨부된 구글 폼을 통해 지원하실 수 있습니다!\n(지원서 링크는 Hero 섹션의 "지금 지원하기" 버튼 참조)',
              ),
              _buildScheduleItem(
                '선발 과정',
                '지원양식 작성 → 대면 인터뷰 → 개별 문자 메시지로 합격 여부 발표',
              ),
              _buildScheduleItem(
                '대면 인터뷰',
                '2026년 3월 18일 (수)',
              ),
              _buildScheduleItem(
                '최종 합류 발표',
                '2026년 3월 19일 (목) 12:00 예정',
              ),
              _buildScheduleItem(
                '신입생 환영회',
                '2026년 3월 20일 (금)',
              ),
              _buildScheduleItem(
                '신입생 OT',
                '2026년 3월 21일 (토)',
              ),
              _buildScheduleItem(
                '첫 대면 활동',
                '2026년 3월 21일 (토) 13:00 - 14:00 (약 1시간 예정)',
              ),
              const SizedBox(height: 105),
              Center(
                child: Column(
                  children: [
                    const Text(
                      '지원서를 작성해주시면 저희 멘토진이 하나하나 다 읽어보며 기대감을 키웁니다!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28, color: Colors.black54), // 1.75x
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      '직접 만나 간단한 인터뷰를 통해 여러분들의 열정을 확인합니다!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28, color: Colors.black54), // 1.75x
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      '앞으로의 여정에 함께하고 싶은 분들에게 직접 문자를 보내드립니다!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28, color: Colors.black54), // 1.75x
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
