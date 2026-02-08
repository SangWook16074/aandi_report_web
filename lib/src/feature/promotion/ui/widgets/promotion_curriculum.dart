import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;

class PromotionCurriculum extends StatefulWidget {
  const PromotionCurriculum({
    super.key,
  });

  @override
  State<PromotionCurriculum> createState() => _PromotionCurriculumState();
}

class _PromotionCurriculumState extends State<PromotionCurriculum> {
  bool isCalled = false;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);

    return Container(
      width: double.infinity,
      // height: double.infinity,
      color: Colors.black, // bg-black
      child: Stack(
        clipBehavior: Clip.none,
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

          // Main Content
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 60,
            ),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1152), // max-w-6xl
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Header
                    Text(
                      'A&I 4기 커리큘럼',
                      style: TextStyle(
                        fontSize: isMobile ? 24 : 58,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff3B83F6),
                        letterSpacing: -1.0, // tracking-tight
                      ),
                      textAlign: TextAlign.center,
                    )
                        .animate()
                        .fadeIn(duration: 600.ms)
                        .moveY(begin: 20, end: 0),

                    const SizedBox(height: 8),

                    Text(
                      '멘토진이 설계한 성장의 로드맵을 한 눈에 확인하세요.',
                      style: TextStyle(
                        fontSize: isMobile ? 16 : 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: -1.0, // tracking
                      ),
                      textAlign: TextAlign.center,
                    )
                        .animate()
                        .fadeIn(delay: 200.ms, duration: 600.ms)
                        .moveY(begin: 20, end: 0),

                    const SizedBox(height: 60),

                    // Roadmap Container
                    ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxWidth: 1024), // max-w-5xl
                      child: IntrinsicHeight(
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            // Center Line
                            Positioned(
                              top: 32,
                              bottom: 32,
                              child: Container(
                                width: 3,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      const Color(0xFF3B82F6), // blue-500
                                      const Color(0xFF3B82F6),
                                      Colors.transparent,
                                    ],
                                    stops: const [0.0, 0.15, 0.85, 1.0],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF3B82F6)
                                          .withOpacity(0.6),
                                      blurRadius: 12,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // Items
                            Column(
                              children: [
                                _buildRoadmapItem(
                                  isLeft: true,
                                  icon: Icons.terminal,
                                  tag: 'Foundation',
                                  title: '프로그래밍 기초',
                                  items: [
                                    '프로그래밍 핵심 문법',
                                    '기초 설계 및 구현',
                                  ],
                                  isMobile: isMobile,
                                ),
                                _buildRoadmapItem(
                                  isLeft: false,
                                  icon: Icons.storage, // Database
                                  tag: 'CS Deep Dive',
                                  title: '심화 컴퓨터 공학',
                                  items: [
                                    '개발자 필수 CS 지식',
                                    '아키텍처/디자인 패턴',
                                  ],
                                  isMobile: isMobile,
                                ),
                                _buildRoadmapItem(
                                  isLeft: true,
                                  icon: Icons.layers,
                                  tag: 'Framework',
                                  title: '프레임워크',
                                  items: [
                                    'Flutter / Spring Boot',
                                    'AI 주도 개발 활용 능력',
                                  ],
                                  isMobile: isMobile,
                                ),
                                _buildRoadmapItem(
                                  isLeft: false,
                                  icon: Icons.groups,
                                  tag: 'Team Project',
                                  title: '팀 프로젝트',
                                  items: [
                                    '애자일 방식의 프로젝트',
                                    '멘토주도 코드 리뷰',
                                  ],
                                  isMobile: isMobile,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRoadmapItem({
    required bool isLeft,
    required IconData icon,
    required String tag,
    required String title,
    required List<String> items,
    required bool isMobile,
  }) {
    // If mobile, we might want to stack things differently, but for now maintaining the alternating structure
    // as it creates the connected line effect. On very small screens, this might need adjustment.

    final content = Expanded(
      child: Column(
        crossAxisAlignment:
            isLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          // Glass Icon Box
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF3B82F6).withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFF3B82F6).withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Icon(icon, color: const Color(0xFF3B82F6), size: 24),
          ),

          // Tag
          Text(
            tag.toUpperCase(),
            style: TextStyle(
              fontSize: isMobile ? 10 : 15, // text-[9px] approx
              fontWeight: FontWeight.bold,
              color: Color(0xFF3B82F6),
              letterSpacing: 1.5, // tracking-widest
            ),
          ),

          // Title
          Text(
            title,
            style: TextStyle(
              fontSize: isMobile ? 20 : 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1.4,
            ),
          ),

          const SizedBox(height: 6),

          // List Items
          ...items.map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  mainAxisAlignment:
                      isLeft ? MainAxisAlignment.end : MainAxisAlignment.start,
                  children: [
                    if (!isLeft) ...[
                      _buildBlueDot(),
                      const SizedBox(width: 8),
                    ],
                    Text(
                      item,
                      style: TextStyle(
                        fontSize: isMobile ? 15 : 20, // text-xs
                        color: Color(0xffffffff), // zinc-400
                        height: 1.4,
                      ),
                    ),
                    if (isLeft) ...[
                      const SizedBox(width: 8),
                      _buildBlueDot(),
                    ],
                  ],
                ),
              )),
        ],
      ),
    );

    final spacer = Expanded(child: Container());

    return SizedBox(
      height: 180, // Approximate height for each section to allow spacing
      child: Row(
        children: [
          if (isLeft) ...[
            content,
            const SizedBox(width: 48), // pr-12 equivalent spacing
          ] else ...[
            spacer,
            const SizedBox(width: 48),
          ],

          // Center Node
          Stack(
            alignment: Alignment.center,
            children: [
              // The central line is drawn by the parent stack, this is just the node
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: const Color(0xFF3B82F6),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 3),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFF3B82F6),
                        blurRadius: 8,
                        spreadRadius: 0),
                  ],
                ),
              ),
            ],
          ),

          if (!isLeft) ...[
            const SizedBox(width: 48), // pl-12
            content,
          ] else ...[
            const SizedBox(width: 48),
            spacer,
          ],
        ],
      ),
    ).animate().fadeIn(duration: 600.ms, delay: 200.ms).slide(
        begin: Offset(0, 0.2),
        end: Offset.zero,
        duration: 600.ms,
        curve: Curves.easeOutQuad);
  }

  Widget _buildBlueDot() {
    return Container(
      width: 5,
      height: 5,
      decoration: const BoxDecoration(
        color: Color(0xFF3B82F6),
        shape: BoxShape.circle,
      ),
    );
  }
}

class StarFieldPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final random = math.Random(42); // Fixed seed for consistent stars

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
