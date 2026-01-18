import 'dart:async';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';

class PromotionCurriculum extends StatefulWidget {
  const PromotionCurriculum({super.key});

  @override
  State<PromotionCurriculum> createState() => _PromotionCurriculumState();
}

class _PromotionCurriculumState extends State<PromotionCurriculum> {
  int _currentPage = 0;
  late final PageController _pageController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _startAutoSwipe();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoSwipe() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void _stopAutoSwipe() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isTablet(context);
    // final isTablet = MediaQuery.of(context).size.width <= 1200;

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xff000000), // 부드러운 쿨 그레이 배경 유지
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 40 : 40),
      child: Center(
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1400),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '함께할 여정을 소개합니다!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isMobile ? 24 : 58, // 반응형 폰트
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
                      fontSize: isMobile ? 16 : 24, // 반응형 폰트
                      color: Colors.white70,
                    ),
                  )
                      .animate()
                      .fadeIn(duration: 800.ms, delay: 500.ms)
                      .moveY(begin: 30, end: 0),

                  SizedBox(height: isMobile ? 20 : 50),

                  // 반응형 배치 (Carousel vs Row)
                  if (isMobile)
                    Column(
                      children: [
                        _buildCurriculumStage(
                          context,
                          'Foundation',
                          '코딩 입문 및 기초',
                          '본인이 선택한 프로그래밍 언어 문법과 기초적인 구현 방법에 대해서 학습합니다.',
                          [
                            '코딩 문법 입문',
                            '기초 알고리즘',
                          ],
                          isMobile: isMobile,
                          color: Colors.black87,
                        ),
                        Container(
                          width: 4.0,
                          height: 10,
                          decoration: BoxDecoration(color: Color(0xff242424)),
                        ),
                        _buildCurriculumStage(
                          context,
                          'CS Deep Dive',
                          '심화 컴퓨터 공학',
                          '개발자라면 반드시 알아야 될 컴퓨터 공학, 소프트웨어의 기본 원리를 직접 구현하며 학습합니다.\n\n제한된 환경에서 끊임없이 도전합니다.',
                          [
                            '코딩 문법 입문',
                            '기초 알고리즘',
                          ],
                          isMobile: isMobile,
                          color: Colors.black87,
                        ),
                        Container(
                          width: 4.0,
                          height: 10,
                          decoration: BoxDecoration(color: Color(0xff242424)),
                        ),
                        _buildCurriculumStage(
                          context,
                          'Framework',
                          '프레임워크',
                          '크로스플랫폼 앱(Flutter), 서버(Spring Boot) 중 1가지 선택하여 멘토와 함께 학습합니다.\n\n또한, AI 기술도 함께 습득합니다.',
                          [
                            '크로스플랫폼 앱 개발(Flutter)',
                            '서버 개발(Spring Boot)',
                            'AI (PyTorch)\n- AI 핵심 원리 및 구현',
                          ],
                          isMobile: isMobile,
                          color: Colors.black87,
                        ),
                        Container(
                          width: 4.0,
                          height: 10,
                          decoration: BoxDecoration(color: Color(0xff242424)),
                        ),
                        _buildCurriculumStage(
                          context,
                          'Team Project',
                          '팀 프로젝트',
                          '각 분야를 학습한 여러분들이 팀이 되어 스스로 정의한 문제에 대해서 프로젝트를 수행합니다.',
                          [
                            '풍부한 경험의 멘토진이\n프로젝트 완성을 돕습니다.',
                          ],
                          isMobile: isMobile,
                          color: Colors.white70,
                        ),
                      ],
                    )
                        .animate()
                        .fadeIn(duration: 1000.ms, delay: 500.ms)
                        .moveY(begin: 30, end: 0)
                  else
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // 1차 과정
                          Flexible(
                            fit: FlexFit.tight,
                            child: _buildCurriculumStage(
                              context,
                              'Foundation',
                              '코딩 입문 및 기초',
                              '본인이 선택한 프로그래밍 언어 문법과 기초적인 구현 방법에 대해서 학습합니다.',
                              [
                                '코딩 문법 입문',
                                '기초 알고리즘',
                              ],
                              isMobile: false,
                              color: Colors.white24,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: _buildCurriculumStage(
                              context,
                              'CS Deep Dive',
                              '심화 컴퓨터 공학',
                              '개발자라면 반드시 알아야 될 컴퓨터 공학, 소프트웨어의 기본 원리를 직접 구현하며 학습합니다.\n\n제한된 환경에서 끊임없이 도전합니다.',
                              [
                                '코딩 문법 입문',
                                '기초 알고리즘',
                              ],
                              isMobile: false,
                              color: Colors.white24,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: _buildCurriculumStage(
                              context,
                              'Framework',
                              '프레임워크',
                              '크로스플랫폼 앱(Flutter), 서버(Spring Boot) 중 1가지 선택하여 멘토와 함께 학습합니다.\n\n또한, AI 기술도 함께 습득합니다.',
                              [
                                '크로스플랫폼 앱 개발(Flutter)',
                                '서버 개발(Spring Boot)',
                                'AI (PyTorch)',
                              ],
                              isMobile: false,
                              color: Colors.white54,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: _buildCurriculumStage(
                              context,
                              'Team Project',
                              '팀 프로젝트',
                              '각 분야를 학습한 여러분들이 팀이 되어 스스로 정의한 문제에 대해서 프로젝트를 수행합니다.',
                              [
                                '풍부한 경험의 멘토진이\n프로젝트 완성을 돕습니다.',
                              ],
                              isMobile: false,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    )
                        .animate()
                        .fadeIn(duration: 1000.ms, delay: 500.ms)
                        .moveY(begin: 30, end: 0),
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
    List<String> items, {
    required Color color, // 색상 파라미터 제거
    required bool isMobile, // Add this
  }) {
    // 흑백 테마를 위한 색상 정의
    final Color iconColor = Color(0xff9929EA);
    final Color stageTitleColor = Colors.white;
    final Color subTitleColor = Colors.white70;
    final Color stageBgColor = Colors.black87;

    return Container(
      padding: EdgeInsets.all(isMobile ? 16 : 32), // Responsive padding
      decoration: BoxDecoration(
        color: Color(0xff242424),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(isMobile ? 8 : 12), // Responsive padding
              decoration: BoxDecoration(
                color: stageBgColor, // 흑백 톤 배경
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.school_rounded,
                  color: iconColor,
                  size: isMobile ? 24 : 28), // Responsive icon size
            ),
            SizedBox(width: isMobile ? 12 : 16), // Responsive spacing
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stage,
                  style: TextStyle(
                    fontSize: isMobile ? 12 : 16, // Responsive font size
                    fontWeight: FontWeight.bold,
                    color: subTitleColor, // 흑백 톤 제목
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: isMobile ? 16 : 20, // Responsive font size
                    fontWeight: FontWeight.bold,
                    color: stageTitleColor, // 흑백 톤 제목
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: isMobile ? 4 : 24), // Responsive spacing

        const Divider(height: 1, color: Colors.black12),
        SizedBox(height: isMobile ? 4 : 24), // Responsive spacing
        Text(
          description,
          style: TextStyle(
            fontSize: isMobile ? 14 : 16, // Responsive font size
            color: Colors.white70,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
        ),
      ]),
    );
  }
}
