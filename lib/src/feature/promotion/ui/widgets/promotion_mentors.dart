import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/gradient_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Mentor {
  final String image;
  final String name;
  final String role;
  final Color color;
  final List<String> achievements;

  const Mentor({
    required this.name,
    required this.role,
    required this.achievements,
    required this.image,
    required this.color,
  });

  String get path {
    return "assets/mentor_$image.png";
  }
}

class PromotionMentors extends StatefulWidget {
  const PromotionMentors({super.key});

  @override
  State<PromotionMentors> createState() => _PromotionMentorsState();
}

class _PromotionMentorsState extends State<PromotionMentors>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  final List<Mentor> _allMentors = const [
    Mentor(
        image: "b",
        name: '멘토 B',
        role: 'MOBILE',
        achievements: ['노원구 스타트업 창업대회 대상', 'A&I 3기 프론트엔드과정'],
        color: Color(0xff3B83F6)),
    Mentor(
        image: "c",
        name: '멘토 C',
        role: 'BACKEND',
        achievements: ['우아한 테크코스 수료', 'A&I 2기 백엔드과정'],
        color: Color(0xff3B83F6)),
    Mentor(
        image: "d",
        name: '멘토 D',
        role: 'BACKEND',
        achievements: ['한국정보처리학회 2025 ACK 논문 게재', 'A&I 3기 백엔드과정'],
        color: Color(0xff3B83F6)),
    Mentor(
        image: "e",
        name: '멘토 E',
        role: 'AI',
        achievements: ['부스트캠프 AI Tech 8기 수료', '교육 과정 프로젝트 1위', 'A&I 3기 백엔드과정'],
        color: Color(0xff3B83F6)),
    Mentor(
        image: 'a',
        name: '멘토 A',
        role: 'MOBILE',
        achievements: [
          '1년차 모바일 엔지니어',
          '부스트캠프 Web/Mobile 9기 수료',
          'Flutter Seoul 바이브코딩 해커톤 3위',
        ],
        color: Color(0xff3B83F6)),
  ];

  static const double _cardMargin = 20.0;

  @override
  void initState() {
    super.initState();
    // 멘토 수에 따라 애니메이션 속도 조절
    final duration = Duration(seconds: _allMentors.length * 5);
    _controller = AnimationController(
      vsync: this,
      duration: duration,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 무한 스크롤을 위해 리스트를 두 배로 늘림
    final infiniteMentors = [..._allMentors, ..._allMentors];
    final isMobile = ResponsiveLayout.isMobile(context);
    const cardWidth = 400.0;
    const totalItemWidth = cardWidth + _cardMargin;
    final totalScrollWidth = totalItemWidth * _allMentors.length;

    return Container(
      width: double.infinity,
      constraints:
          BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      color: const Color(0xff000000), // 매우 어두운 배경 (Almost Black)
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 배경 광원 효과 (BackdropFilter 대신 RadialGradient 사용으로 성능 최적화)
          // 기존 blur 140 효과를 내기 위해 크기를 키우고 gradient spread를 활용

          Positioned(
            top: isMobile ? -250 : -400,
            left: isMobile ? -250 : -400,
            child: Container(
              width: isMobile ? 500 : 800,
              height: isMobile ? 500 : 800,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xff3B83F6).withOpacity(0.15),
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.7],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: isMobile ? -250 : -400,
            right: isMobile ? -250 : -400,
            child: Container(
              width: isMobile ? 500 : 800,
              height: isMobile ? 500 : 800,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xff3B83F6).withOpacity(0.2),
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.8],
                ),
              ),
            ),
          ),

          // 메인 콘텐츠
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '멘토 및 운영진 소개',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isMobile ? 24 : 58,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff3B83F6),
                  letterSpacing: -1.0, // tracking
                ),
              )
                  .animate()
                  .fadeIn(duration: 600.ms, delay: 500.ms)
                  .moveY(begin: 30, end: 0),
              const SizedBox(height: 12),
              Text(
                '현직자 및 국내 유명 부트캠프 출신 멘토진이 여러분의 성장을 돕습니다.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isMobile ? 16 : 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: -1.0, // tracking
                ),
              )
                  .animate()
                  .fadeIn(duration: 800.ms, delay: 500.ms)
                  .moveY(begin: 30, end: 0),
              const SizedBox(height: 40),

              // 무한 스크롤 영역
              RepaintBoundary(
                child: SizedBox(
                  height: 280,
                  width: double.infinity,
                  child: ClipRect(
                    child: OverflowBox(
                      minWidth: 0,
                      maxWidth: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          final offset = -totalScrollWidth * _controller.value;
                          return Transform.translate(
                            offset: Offset(offset, 0),
                            child: child,
                          );
                        },
                        // Row를 child로 전달하여 재빌드 방지
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: infiniteMentors
                              .map((mentor) => MentorCard(
                                    mentor: mentor,
                                    cardWidth: cardWidth,
                                    margin: _cardMargin,
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
              .animate()
              .fadeIn(duration: 1000.ms, delay: 500.ms)
              .moveY(begin: 30, end: 0),
        ],
      ),
    );
  }
}

class MentorCard extends StatelessWidget {
  final Mentor mentor;
  final double cardWidth;
  final double margin;

  const MentorCard({
    super.key,
    required this.mentor,
    required this.cardWidth,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final isTablet = ResponsiveLayout.isTablet(context);

    return Padding(
      padding: EdgeInsets.only(right: margin),
      child: CustomPaint(
        painter: GradientBorderPainter(
          radius: 48,
          strokeWidth: 1,
          gradient: LinearGradient(
            begin: const Alignment(-1.0, -1.3),
            end: const Alignment(1.0, 1.3),
            stops: const [.09, .29, .78, .90],
            colors: [
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.07),
              Colors.white.withOpacity(0.07),
              Colors.white.withOpacity(0.07),
            ],
          ),
        ),
        child: Container(
          width: cardWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(48),
            gradient: LinearGradient(
              begin: const Alignment(-1.0, -1.3),
              end: const Alignment(1.0, 1.3),
              colors: [
                Colors.white.withOpacity(0.07),
                Colors.white.withOpacity(0.04),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 이미지 최적화: cacheWidth 설정으로 메모리 절약
                    Image.asset(
                      mentor.path,
                      height: 200,
                      width: 150,
                      cacheWidth: 300, // Retina 디스플레이 고려 2배 크기로 캐싱
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color:
                                  mentor.color.withAlpha((255 * 0.1).toInt()),
                              border: Border.all(
                                  width: 1.0,
                                  color: mentor.color
                                      .withAlpha((255 * 0.2).toInt())),
                              borderRadius: BorderRadius.circular(999),
                            ),
                            child: Text(
                              mentor.role,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: mentor.color,
                                  fontWeight: FontWeight.w500,
                                  height: -1),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            mentor.name,
                            style: TextStyle(
                              fontSize: isTablet ? 16 : 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 24),
                          ...mentor.achievements.map((achi) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 21,
                                    child: Center(
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                            color: mentor.color,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Flexible(
                                    child: Text(
                                      achi,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        height: 1.4,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
