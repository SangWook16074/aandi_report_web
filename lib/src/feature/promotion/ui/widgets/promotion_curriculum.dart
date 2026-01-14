import 'package:flutter/material.dart';

class PromotionCurriculum extends StatelessWidget {
  const PromotionCurriculum({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 105, horizontal: 42), // 1.75x
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                '앞으로 여정에서 함께 배울 내용을 소개합니다!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50, // 1.75x
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 88),

              // 1차 과정
              _buildCurriculumStage(
                context,
                '1차 과정: 코딩 입문 및 기초',
                '코딩을 몰라도 열정만 있다면 참여할 수 있습니다!',
                [
                  '코딩 문법 입문: 코드를 몰라도 학습 원동력을 가질 수 있도록 도와드립니다!',
                  '기초 알고리즘: 정해진 문제 상황을 이해하고 풀이할 수 있는 방법을 학습합니다!',
                ],
                Colors.blue.shade600,
              ),
              const SizedBox(height: 70),

              // 2차 과정
              _buildCurriculumStage(
                context,
                '2차 과정: 심화 분야 학습 (택1)',
                '아래 내용 중 본인이 배우고 싶은 내용에 대해 자세하게 알려드립니다!',
                [
                  'Flutter 과정 (Dart + Flutter)\n   - Flutter를 이용한 크로스플랫폼 앱 제작\n   - MVVM 패턴, 상태관리(Provider, BLoC) 적용\n   - 클라우드 서비스, REST API 활용',
                  'Spring boot 과정 (Kotlin + Spring Boot)\n   - Spring boot 기반 서버 개발\n   - MVC 패턴 이해 및 적용\n   - AWS + Docker, Docker-Compose, Github Action 배포',
                  'AI 과정 (PyTorch)\n   - 최신 AI 핵심 원리 학습\n   - 실제 프로젝트 적용 가능한 AI 구현',
                ],
                Colors.green.shade600,
              ),
              const SizedBox(height: 70),

              // 3차 과정
              _buildCurriculumStage(
                context,
                '3차 과정: 팀 프로젝트',
                '각 분야를 학습한 여러분들이 같은 팀이 되어 최고의 프로젝트를 만듭니다!',
                [
                  '개발 경험이 풍부한 멘토진이 팀 프로젝트가 완성될 수 있도록 도와드립니다.',
                ],
                Colors.purple.shade600,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCurriculumStage(
    BuildContext context,
    String title,
    String description,
    List<String> items,
    Color color,
  ) {
    // 아이콘 + SizedBox 너비 = 49 + 21 = 70.
    // 설명과 항목의 시작점을 이 위치에 맞춥니다.
    const double _contentIndent = 70.0;

    return Container(
      padding: const EdgeInsets.all(42),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 18,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 텍스트 블록 자체는 왼쪽 정렬
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start, // 아이콘과 텍스트 상단 정렬
            children: [
              Icon(Icons.check_circle, color: color, size: 49),
              const SizedBox(width: 21),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.only(left: _contentIndent), // 시작점 맞춤
            child: Text(
              description,
              style: const TextStyle(
                  fontSize: 28,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 28),
          Column( // 항목들을 Column으로 묶어서 패딩 일괄 적용
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items.map(
              (item) => Padding(
                padding: const EdgeInsets.only(left: _contentIndent, bottom: 14.0), // 시작점 맞춤
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('• ',
                        style: TextStyle(fontSize: 28, color: Colors.black54)),
                    Expanded(
                      child: Text(
                        item,
                        style:
                            const TextStyle(fontSize: 26, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            ).toList(),
          ),
        ],
      ),
    );
  }
}