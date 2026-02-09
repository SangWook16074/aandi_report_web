import 'package:flutter/foundation.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_bottom_bar.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/animate_on_visible.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PromotionSchedule extends ConsumerStatefulWidget {
  const PromotionSchedule({
    super.key,
    this.bottomBarKey,
    this.isStaticBarVisible = true,
  });

  final GlobalKey? bottomBarKey;
  final bool isStaticBarVisible;

  @override
  ConsumerState<PromotionSchedule> createState() => _PromotionScheduleState();
}

class _PromotionScheduleState extends ConsumerState<PromotionSchedule> {
  bool isCalled = false;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    // 모바일 웹에서는 Blur 효과가 성능에 치명적이므로, RadialGradient로 대체하여 성능을 최적화함.
    final useOptimizedBackground = kIsWeb && isMobile;

    return Container(
      width: double.infinity,
      constraints:
          BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      color: Colors.black,
      child: Stack(
        children: [
          // Blurred Blobs (Blue Glows)
          Positioned(
            top: 0,
            left: 0,
            child: Transform.translate(
              offset: const Offset(-300, 0),
              child: RepaintBoundary(
                child: useOptimizedBackground
                    ? Container(
                        width: 500,
                        height: 500,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: RadialGradient(
                            colors: [
                              const Color(0xFF1E3A8A).withOpacity(0.4),
                              Colors.transparent,
                            ],
                            stops: const [0.0, 0.7],
                          ),
                        ),
                      )
                    : ImageFiltered(
                        imageFilter:
                            ui.ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                        child: Container(
                          width: 500,
                          height: 500,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1E3A8A)
                                .withOpacity(0.2), // blue-900
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            right: 0,
            child: Transform.translate(
              offset: const Offset(-250, 250),
              child: RepaintBoundary(
                child: useOptimizedBackground
                    ? Container(
                        width: 500,
                        height: 500,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: RadialGradient(
                            colors: [
                              const Color(0xFF172554).withOpacity(0.4),
                              Colors.transparent,
                            ],
                            stops: const [0.0, 0.7],
                          ),
                        ),
                      )
                    : ImageFiltered(
                        imageFilter:
                            ui.ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                        child: Container(
                          width: 500,
                          height: 500,
                          decoration: BoxDecoration(
                            color: const Color(0xFF172554)
                                .withOpacity(0.2), // blue-950
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
              ),
            ),
          ),

          // Main Content
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 40,
                  vertical: 60,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 1. 헤더 섹션
                    Column(
                      children: [
                        AnimateOnVisible(
                          uniqueKey: 'schedule_title',
                          child: Text(
                            '동아리 모집 일정',
                            style: TextStyle(
                              fontSize: isMobile ? 24 : 58,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff3B83F6),
                              letterSpacing: -1.0, // tracking
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 16),
                        AnimateOnVisible(
                          uniqueKey: 'schedule_subtitle',
                          child: Text(
                            '지원서를 작성해주시면 멘토진이 꼼꼼히 읽어보겠습니다. 여러분의 열정을 기다립니다!',
                            style: TextStyle(
                              fontSize: isMobile ? 16 : 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              letterSpacing: -1.0, // tracking
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 60),

                    // 2. 메인 컨텐츠 섹션 (타임라인)
                    Container(
                      constraints:
                          BoxConstraints(maxWidth: isMobile ? 350 : 450),
                      child: Stack(
                        children: [
                          // Vertical Line
                          Positioned(
                            left:
                                isMobile ? 27 : 35, // Adjust based on icon size
                            top: 20,
                            bottom: 20,
                            child: Container(
                              width: 2,
                              color: const Color(0xFF3B82F6).withOpacity(0.3),
                            ),
                          ),
                          AnimateOnVisible(
                            delay: 200.ms,
                            uniqueKey: 'timeline',
                            effects: [
                              FadeEffect(
                                duration: 600.ms,
                              ),
                              MoveEffect(
                                duration: 600.ms,
                                begin: const Offset(30, 0),
                                end: Offset.zero,
                              ),
                            ],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildTimelineItem(
                                  isMobile: isMobile,
                                  date: '모집 기간',
                                  content: '2026.01.16 (월) - 2026.03.15 (일)',
                                  icon: Icons.calendar_month_rounded,
                                  delay: 0,
                                ),
                                _buildTimelineItem(
                                  isMobile: isMobile,
                                  date: '선발 과정',
                                  content: '서류 접수 → 대면 인터뷰 → 최종 합격',
                                  icon: Icons.playlist_add_check_circle,
                                  delay: 100,
                                ),
                                _buildTimelineItem(
                                  isMobile: isMobile,
                                  date: '인터뷰',
                                  content: '2026.03.18 (수)',
                                  icon: Icons.people_alt_rounded,
                                  delay: 200,
                                ),
                                _buildTimelineItem(
                                  isMobile: isMobile,
                                  date: '합격자 발표',
                                  content: '2026.03.19 (목)',
                                  icon: Icons.notifications_active_rounded,
                                  delay: 300,
                                ),
                                _buildTimelineItem(
                                  isMobile: isMobile,
                                  date: '네트워킹',
                                  content: '2026.03.20 (금)',
                                  icon: Icons.celebration_rounded,
                                  delay: 400,
                                ),
                                _buildTimelineItem(
                                  isMobile: isMobile,
                                  date: '오리엔테이션',
                                  content: '2026.03.21 (토)',
                                  icon: Icons.school_rounded,
                                  delay: 500,
                                  isLast: true,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 60),

                    // 3. 하단 액션 버튼
                    Opacity(
                      opacity: widget.isStaticBarVisible ? 1.0 : 0.0,
                      child: Container(
                        key: widget.bottomBarKey,
                        child: const PromotionBottomBar(),
                      ),
                    ),

                    const SizedBox(height: 24),

                    AnimateOnVisible(
                      uniqueKey: 'schedule_faq',
                      delay: 800.ms,
                      child: TextButton(
                        onPressed: () {
                          context.go("/faq");
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "자주 묻는 질문",
                              style: TextStyle(
                                fontSize: isMobile ? 14 : 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white60,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 12,
                              color: Colors.white60,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimelineItem({
    required bool isMobile,
    required String date,
    required String content,
    required IconData icon,
    required int delay,
    bool isLast = false,
  }) {
    final timelineStep = Container(
      margin: EdgeInsets.only(bottom: isLast ? 0 : 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon Box
          Container(
            width: isMobile ? 56 : 72,
            height: isMobile ? 56 : 72,
            decoration: BoxDecoration(
              color: const Color(0xFF000000), // Black background to hide line
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF3B82F6),
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF3B82F6).withOpacity(0.3),
                  blurRadius: 12,
                ),
              ],
            ),
            child: Icon(
              icon,
              size: isMobile ? 24 : 32,
              color: const Color(0xFF3B82F6),
            ),
          ),

          SizedBox(width: isMobile ? 20 : 32),

          // Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: isMobile ? 12 : 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF3B82F6),
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    content,
                    style: TextStyle(
                      fontSize: isMobile ? 16 : 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    return timelineStep;
  }
}

class StarFieldPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final random = math.Random(42);

    // Small stars
    final smallStarPaint = Paint()
      ..color = Colors.white.withOpacity(0.3)
      ..style = PaintingStyle.fill;

    for (int i = 0; i < 50; i++) {
      final x = random.nextDouble() * size.width;
      final y = random.nextDouble() * size.height;
      canvas.drawCircle(Offset(x, y), 0.5, smallStarPaint);
    }

    // Medium stars
    final mediumStarPaint = Paint()
      ..color = Colors.white.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    for (int i = 0; i < 20; i++) {
      final x = random.nextDouble() * size.width;
      final y = random.nextDouble() * size.height;
      canvas.drawCircle(Offset(x, y), 1.0, mediumStarPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
