import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';

class Mentor {
  final String name;
  final String role;
  final List<String> achievements;

  const Mentor({
    required this.name,
    required this.role,
    required this.achievements,
  });
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
      name: '멘토 B',
      role: '프론트엔드',
      achievements: ['노원구 스타트업 창업 대회 대상', 'A&I 3기 프론트엔드과정'],
    ),
    Mentor(
      name: '멘토 C',
      role: '백엔드',
      achievements: ['우아한 테크코스 수료', 'A&I 2기 백엔드과정'],
    ),
    Mentor(
      name: '멘토 D',
      role: '백엔드',
      achievements: ['한국정보처리학회 주관 ACK 2025 논문 게재', 'A&I 3기 백엔드과정'],
    ),
    Mentor(
      name: '멘토 E',
      role: 'AI',
      achievements: [
        '네이버 커넥트재단 부스트캠프 AI Tech 8기 수료',
        '교육 과정 내 프로젝트 결과 순위 1위 달성',
        'A&I 3기 백엔드과정'
      ],
    ),
    Mentor(
      name: '멘토 A',
      role: '프론트엔드',
      achievements: [
        '1년차 모바일 엔지니어',
        '네이버 커넥트재단 부스트캠프 Web/Mobile 9기 수료',
        'Flutter Seoul 바이브코딩 해커톤 3위',
        '1000명 이상이 활용 중인 오픈소스 운영',
      ],
    ),
  ];

  static const double _cardMargin = 20.0;

  @override
  void initState() {
    super.initState();
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

  IconData _getRoleIcon(String role) {
    if (role.contains('프론트')) return Icons.phone_android_rounded;
    if (role.contains('백엔드')) return Icons.dns_rounded;
    if (role.contains('AI')) return Icons.psychology_rounded;
    return Icons.code_rounded;
  }

  Widget _buildMentorCard(Mentor mentor, double cardWidth) {
    final isMobile = ResponsiveLayout.isTablet(context);
    return Container(
      width: cardWidth,
      margin: const EdgeInsets.only(right: _cardMargin),
      child: Card(
        elevation: 8.0,
        shadowColor: Colors.black54, // 더 진한 그림자
        color: const Color(0xff161616), // 다크 카드 배경
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            // 1. 배경 워터마크 아이콘
            Positioned(
              right: -20,
              bottom: -20,
              child: Transform.rotate(
                angle: -0.2,
                child: Icon(
                  _getRoleIcon(mentor.role),
                  size: 150,
                  color: Colors.white.withValues(alpha: 0.05), // 흰색 투명도
                ),
              ),
            ),

            // 2. 실제 콘텐츠
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        // radius: 24,
                        padding: EdgeInsets.all(isMobile ? 10 : 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: Colors.white10,
                        ),

                        child: Icon(_getRoleIcon(mentor.role),
                            color: Color(0xffFAEB92), size: isMobile ? 24 : 28),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              mentor.role,
                              style: TextStyle(
                                fontSize: isMobile ? 12 : 16,
                                color: Colors.white54, // 회색 텍스트
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              mentor.name,
                              style: TextStyle(
                                fontSize: isMobile ? 16 : 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // 흰색 텍스트
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(color: Colors.white12),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: mentor.achievements.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 21,
                                child: Center(
                                  child: Container(
                                    width: 6,
                                    height: 6,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFAEB92),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  mentor.achievements[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white, // 밝은 회색 텍스트
                                    height: 1.4,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final infiniteMentors = [..._allMentors, ..._allMentors];
    final isMobile = ResponsiveLayout.isMobile(context);
    final cardWidth = isMobile
        ? MediaQuery.of(context).size.width * 0.85
        : MediaQuery.of(context).size.width * 0.3;
    final totalItemWidth = cardWidth + _cardMargin;
    final totalScrollWidth = totalItemWidth * _allMentors.length;

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF121212), // 매우 어두운 배경 (Almost Black)
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '멘토 및 운영진 소개',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isMobile ? 24 : 58, // 반응형 폰트
              fontWeight: FontWeight.bold,
              color: Colors.white, // 흰색
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
              fontSize: isMobile ? 16 : 30, // 반응형 폰트
              fontWeight: FontWeight.w700,
              color: Colors.white54, // 회색
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: infiniteMentors
                          .map((mentor) => _buildMentorCard(mentor, cardWidth))
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
    );
  }
}
