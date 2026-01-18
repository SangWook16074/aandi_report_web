import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class PromotionSchedule extends StatelessWidget {
  final VoidCallback? onPrevPage;
  const PromotionSchedule({super.key, this.onPrevPage});

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse(
        'https://docs.google.com/forms/d/e/1FAIpQLSdIXB0FxwJaQw6f-vpf5mYBxNMlJs2PII_0UQo31n3As2PgyA/viewform?usp=header');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 40,
        // vertical: 40,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: NotificationListener(
            onNotification: (notification) {
              if (notification is ScrollUpdateNotification) {
                final metrics = notification.metrics;

                // 스크롤이 끝에 거의 도달했는지 체크
                if (metrics.pixels <= metrics.minScrollExtent - 1) {
                  onPrevPage?.call();
                }
              }

              return false;
            },
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 1. 헤더 섹션
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Text(
                          '동아리 모집 일정',
                          style: TextStyle(
                            fontSize: isMobile ? 24 : 58,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: -0.5,
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
                            fontSize: isMobile ? 14 : 18,
                            color: Colors.white60,
                          ),
                          textAlign: TextAlign.center,
                        )
                            .animate()
                            .fadeIn(duration: 600.ms, delay: 500.ms)
                            .moveY(begin: 30, end: 0),
                      ],
                    ),
                  ),

                  // 2. 메인 컨텐츠 섹션 (상하 배치)
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 20.0 : 40.0, vertical: 20.0),
                    constraints: const BoxConstraints(
                      maxWidth: 600,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xff161616),
                      borderRadius: BorderRadius.circular(12),
                      // border: Border.all(color: Colors.white10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // 일정 아이템들

                        _buildTimelineItem(
                          isMobile: isMobile,
                          date: '모집 기간',
                          content: '2026.01.16 (월) - 2026.03.15 (일)',
                          icon: Icons.calendar_month_rounded,
                          color: Colors.white,
                        ),

                        const SizedBox(height: 24),

                        _buildTimelineItem(
                          isMobile: isMobile,
                          date: '선발 과정',
                          content: '서류 접수 → 대면 인터뷰 → 최종 합격',
                          icon: Icons.playlist_add_check_circle,
                          color: Colors.white,
                        ),

                        const SizedBox(height: 24),

                        _buildTimelineItem(
                          isMobile: isMobile,
                          date: '인터뷰',
                          content: '2026.03.18 (수)',
                          icon: Icons.people_alt_rounded,
                          color: Colors.white,
                        ),

                        const SizedBox(height: 24),

                        _buildTimelineItem(
                          isMobile: isMobile,
                          date: '합격자 발표',
                          content: '2026.03.19 (목)',
                          icon: Icons.notifications_active_rounded,
                          color: Colors.white,
                        ),

                        const SizedBox(height: 24),

                        _buildTimelineItem(
                          isMobile: isMobile,
                          date: '네트워킹',
                          content: '2026.03.20 (금)',
                          icon: Icons.celebration_rounded,
                          color: Colors.white,
                        ),

                        const SizedBox(height: 24),

                        _buildTimelineItem(
                          isMobile: isMobile,
                          date: '오리엔테이션',
                          content: '2026.03.21 (토)',
                          icon: Icons.school_rounded,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 20.0 : 40.0, vertical: 10.0),
                    constraints: const BoxConstraints(
                      maxWidth: 600,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xff161616),
                      borderRadius: BorderRadius.circular(12),
                      // border: Border.all(color: Colors.white10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "A&I 4기 모집 중",
                          style: TextStyle(
                            fontSize: isMobile ? 16 : 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: _launchUrl,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: isMobile ? 30 : 40,
                                vertical: isMobile ? 16 : 20), // 반응형 패딩
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            '지금 지원하기',
                            style: TextStyle(
                              fontSize: isMobile ? 16 : 20, // 반응형 폰트 크기
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ).animate().shimmer(delay: 1500.ms, duration: 1000.ms),
                      ],
                    ),
                  ),
                ],
              )
                  .animate()
                  .fadeIn(duration: 800.ms, delay: 500.ms)
                  .moveY(begin: 30, end: 0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTimelineItem({
    required bool isMobile,
    required String date,
    required String content,
    required IconData icon,
    Color? color,
  }) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(isMobile ? 8 : 12),
          decoration: BoxDecoration(
            color: Colors.black87,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: isMobile ? 16 : 20,
            color: Color(0xff9929EA),
          ),
        ),
        SizedBox(width: isMobile ? 12 : 20),
        SizedBox(
          width: isMobile ? 80 : 100,
          child: Text(
            date,
            style: TextStyle(
              fontSize: isMobile ? 14 : 18,
              fontWeight: FontWeight.bold,
              color: color ?? Colors.white70,
            ),
          ),
        ),
        SizedBox(width: isMobile ? 12 : 20),
        Expanded(
          child: Text(
            content,
            style: TextStyle(
                fontSize: isMobile ? 14 : 18,
                color: Colors.white60,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
