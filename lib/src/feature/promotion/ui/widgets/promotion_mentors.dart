import 'package:flutter/material.dart';

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

  // 멘토 데이터 통합
  final List<Mentor> _allMentors = const [
    Mentor(
      name: '멘토 A',
      role: '프론트엔드 멘토',
      achievements: [
        '1년차 모바일 엔지니어',
        '네이버 부스트캠프 웹/모바일 9기 수료',
        'Flutter Seoul 바이브코딩 해커톤 3위',
        '1000명 이상이 활용 중인 오픈소스 운영',
      ],
    ),
    Mentor(
      name: '멘토 B',
      role: '프론트엔드 멘토',
      achievements: [
        '스타트업 창업 대회 대상',
      ],
    ),
    Mentor(
      name: '멘토 C',
      role: '백엔드 멘토',
      achievements: [
        '우아한 테크코스 수료',
      ],
    ),
    Mentor(
      name: '멘토 D',
      role: '백엔드 멘토',
      achievements: [
        'ACK 2025 논문 게재',
      ],
    ),
    Mentor(
      name: '멘토 E',
      role: 'AI 멘토',
      achievements: [
        '네이버 부스트캠프 AI Tech 8기',
        '네이버 사내 대회 1등',
      ],
    ),
  ];

  // 카드 하나의 너비 (마진 포함) - 1.75x
  static const double _cardWidth = 525.0;
  static const double _cardMargin = 28.0;
  static const double _totalItemWidth = _cardWidth + _cardMargin;

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

  Widget _buildMentorCard(Mentor mentor) {
    return Container(
      width: _cardWidth,
      height: 525, // 1.75x 고정 높이
      margin: const EdgeInsets.only(right: _cardMargin),
      child: Card(
        elevation: 4.0,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        clipBehavior: Clip.antiAlias, // 배경 아이콘이 카드 밖으로 나가지 않게 자름
        child: Stack(
          children: [
            // 1. 배경 워터마크 아이콘 (디자인 요소)
            Positioned(
              right: -30,
              bottom: -30,
              child: Transform.rotate(
                angle: -0.2, // 살짝 기울임
                child: Icon(
                  _getRoleIcon(mentor.role),
                  size: 250, // 아주 큰 사이즈
                  color: Colors.grey.withValues(alpha: 0.1), // 아주 연하게
                ),
              ),
            ),

            // 2. 실제 콘텐츠
            Padding(
              padding: const EdgeInsets.all(42.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(_getRoleIcon(mentor.role),
                            color: Colors.grey, size: 40),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              mentor.name,
                              style: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              mentor.role,
                              style: const TextStyle(
                                fontSize: 24,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: mentor.achievements.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('• ',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 28)),
                              Expanded(
                                child: Text(
                                  mentor.achievements[index],
                                  style: const TextStyle(
                                    fontSize: 24,
                                    color: Colors.black87,
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
    final totalScrollWidth = _totalItemWidth * _allMentors.length;

    return Container(
      width: double.infinity,
      color: const Color(0xfff6f6f6),
      padding: const EdgeInsets.symmetric(vertical: 140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '함께 나아갈 멘토를 소개합니다!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            '현직자 및 부트캠프 출신 멘토진이 여러분의 성장을 돕습니다.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 88),

          // 무한 스크롤 영역
          RepaintBoundary(
            child: SizedBox(
              height: 500,
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
                          .map((mentor) => _buildMentorCard(mentor))
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
