import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';

class PromotionCurriculum extends StatelessWidget {
  const PromotionCurriculum({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFFF9FAFB), // 부드러운 쿨 그레이 배경 유지
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 40),
      child: Center(
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1400),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '앞으로 여정에서 함께 배울 내용을 소개합니다!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isMobile ? 24 : 36, // 반응형 폰트
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      letterSpacing: -0.5,
                    ),
                  )
                      .animate()
                      .fadeIn(duration: 600.ms, delay: 500.ms)
                      .moveY(begin: 30, end: 0),
                  const SizedBox(height: 16),
                  Text(
                    '체계적인 커리큘럼으로 여러분의 성장을 확실하게 지원합니다.',
                    style: TextStyle(
                      fontSize: isMobile ? 16 : 18, // 반응형 폰트
                      color: Colors.black54,
                    ),
                  )
                      .animate()
                      .fadeIn(duration: 800.ms, delay: 500.ms)
                      .moveY(begin: 30, end: 0),

                  const SizedBox(height: 50),

                  // 반응형 배치 (Column vs Row)
                  if (isMobile)
                    Column(
                      children: [
                        _buildCurriculumStage(
                          context,
                          '1차 과정',
                          '코딩 입문 및 기초',
                          '코딩을 몰라도 열정만 있다면\n참여할 수 있습니다!',
                          [
                            '코딩 문법 입문\n- 학습 원동력 부여',
                            '기초 알고리즘\n- 문제 해결 능력 배양',
                          ],
                        ),
                        const SizedBox(height: 24),
                        _buildCurriculumStage(
                          context,
                          '2차 과정',
                          '심화 분야 학습 (택1)',
                          '배우고 싶은 내용을\n자세하게 알려드립니다!',
                          [
                            'Flutter (Dart)\n- 크로스플랫폼 앱 제작\n- MVVM, 상태관리, API',
                            'Spring Boot (Kotlin)\n- 서버 개발 및 MVC 패턴\n- AWS, Docker 배포',
                            'AI (PyTorch)\n- AI 핵심 원리 및 구현',
                          ],
                        ),
                        const SizedBox(height: 24),
                        _buildCurriculumStage(
                          context,
                          '3차 과정',
                          '팀 프로젝트',
                          '각 분야를 학습한 여러분들이\n팀이 되어 프로젝트를 만듭니다!',
                          [
                            '풍부한 경험의 멘토진이\n프로젝트 완성을 돕습니다.',
                          ],
                        ),
                      ],
                    ).animate().fadeIn(duration: 1000.ms, delay: 500.ms)
                  else
                    SizedBox(
                      height: 550,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // 1차 과정
                          Expanded(
                            child: _buildCurriculumStage(
                              context,
                              '1차 과정',
                              '코딩 입문 및 기초',
                              '코딩을 몰라도 열정만 있다면\n참여할 수 있습니다!',
                              [
                                '코딩 문법 입문\n- 학습 원동력 부여',
                                '기초 알고리즘\n- 문제 해결 능력 배양',
                              ],
                              // Colors.blue.shade600, // 색상 제거
                            ),
                          ),
                          const SizedBox(width: 24),

                          // 2차 과정
                          Expanded(
                            child: _buildCurriculumStage(
                              context,
                              '2차 과정',
                              '심화 분야 학습 (택1)',
                              '배우고 싶은 내용을\n자세하게 알려드립니다!',
                              [
                                'Flutter (Dart)\n- 크로스플랫폼 앱 제작\n- MVVM, 상태관리, API',
                                'Spring Boot (Kotlin)\n- 서버 개발 및 MVC 패턴\n- AWS, Docker 배포',
                                'AI (PyTorch)\n- AI 핵심 원리 및 구현',
                              ],
                              // Colors.green.shade600, // 색상 제거
                            ),
                          ),
                          const SizedBox(width: 24),

                          // 3차 과정
                          Expanded(
                            child: _buildCurriculumStage(
                              context,
                              '3차 과정',
                              '팀 프로젝트',
                              '각 분야를 학습한 여러분들이\n팀이 되어 프로젝트를 만듭니다!',
                              [
                                '풍부한 경험의 멘토진이\n프로젝트 완성을 돕습니다.',
                              ],
                              // Colors.purple.shade600, // 색상 제거
                            ),
                          ),
                        ],
                      )
                          .animate()
                          .fadeIn(duration: 1000.ms, delay: 500.ms)
                          .moveY(begin: 30, end: 0),
                    ),
                ],
              ),
            )),
      ),
    );
  }

  Widget _buildCurriculumStage(
    BuildContext context,
    String stage,
    String title,
    String description,
    List<String> items,
    // Color color, // 색상 파라미터 제거
  ) {
    // 흑백 테마를 위한 색상 정의
    final Color iconColor = Colors.grey.shade700;
    final Color stageTitleColor = Colors.grey.shade600;
    final Color checkIconColor = Colors.grey.shade500;
    final Color stageBgColor = Colors.grey.shade100;

    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: stageBgColor, // 흑백 톤 배경
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.school_rounded, color: iconColor, size: 28),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    stage,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: stageTitleColor, // 흑백 톤 제목
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 24),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 24),
          const Divider(height: 1, color: Colors.black12),
          const SizedBox(height: 24),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: items
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.check_circle_rounded,
                                size: 20, color: checkIconColor), // 흑백 톤 체크 아이콘
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  height: 1.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
