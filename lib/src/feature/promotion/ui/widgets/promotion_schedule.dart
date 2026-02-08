import 'package:a_and_i_report_web_server/src/feature/promotion/ui/views/apply_button_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;

class PromotionSchedule extends StatefulWidget {
  const PromotionSchedule({
    super.key,
  });

  @override
  State<PromotionSchedule> createState() => _PromotionScheduleState();
}

class _PromotionScheduleState extends State<PromotionSchedule> {
  bool isCalled = false;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);

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
            right: 0,
            child: Transform.translate(
              offset: const Offset(300, -300),
              child: ImageFiltered(
                imageFilter: ui.ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  width: 600,
                  height: 600,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E3A8A).withOpacity(0.2), // blue-900
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Transform.translate(
              offset: const Offset(-250, 250),
              child: ImageFiltered(
                imageFilter: ui.ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                    color: const Color(0xFF172554).withOpacity(0.2), // blue-950
                    shape: BoxShape.circle,
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
                        Text(
                          '동아리 모집 일정',
                          style: TextStyle(
                            fontSize: isMobile ? 24 : 58,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff3B83F6),
                            letterSpacing: -1.0, // tracking
                          ),
                          textAlign: TextAlign.center,
                        )
                            .animate()
                            .fadeIn(duration: 600.ms, delay: 500.ms)
                            .moveY(begin: 30, end: 0),
                        const SizedBox(height: 16),
                        Text(
                          '지원서를 작성해주시면 멘토진이 꼼꼼히 읽어보겠습니다. 여러분의 열정을 기다립니다!',
                          style: TextStyle(
                            fontSize: isMobile ? 16 : 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: -1.0, // tracking
                          ),
                          textAlign: TextAlign.center,
                        )
                            .animate()
                            .fadeIn(duration: 600.ms, delay: 500.ms)
                            .moveY(begin: 30, end: 0),
                      ],
                    ),

                    const SizedBox(height: 60),

                    // 2. 메인 컨텐츠 섹션 (타임라인)
                    Container(
                      constraints: const BoxConstraints(maxWidth: 450),
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
                          Column(
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
                        ],
                      ),
                    ),

                    const SizedBox(height: 60),

                    // 3. 하단 액션 버튼
                    Container(
                      constraints: const BoxConstraints(maxWidth: 600),
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 24 : 32,
                        vertical: 24,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3B82F6).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: const Color(0xFF3B82F6).withOpacity(0.3),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "A&I 4기 모집 중",
                                    style: TextStyle(
                                      fontSize: isMobile ? 18 : 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "함께 성장할 동료를 찾습니다",
                                    style: TextStyle(
                                      fontSize: isMobile ? 12 : 14,
                                      color: Colors.white60,
                                    ),
                                  ),
                                ],
                              ),
                              ApplyButtonView()
                                  .animate()
                                  .shimmer(delay: 1500.ms, duration: 1000.ms),
                            ],
                          ),
                        ],
                      ),
                    ).animate().fadeIn(delay: 600.ms).moveY(begin: 20, end: 0),

                    const SizedBox(height: 24),

                    TextButton(
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
                    ).animate().fadeIn(delay: 800.ms),

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
    return Container(
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
    )
        .animate()
        .fadeIn(duration: 600.ms, delay: Duration(milliseconds: 500 + delay))
        .moveX(begin: 30, end: 0);
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
