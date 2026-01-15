import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_hero.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_intro.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_mentors.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_curriculum.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_schedule.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({super.key});

  @override
  State<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  int _currentIndex = 0;
  bool _isAnimating = false;
  static const double _scrollThreshold = 10.0;
  static const Duration _transitionDuration = Duration(milliseconds: 800);

  final List<Widget> _pages = const [
    PromotionHero(),
    PromotionIntro(),
    PromotionMentors(),
    PromotionCurriculum(),
    PromotionSchedule(),
  ];

  void _onScroll(PointerSignalEvent event) {
    if (_isAnimating) return;

    if (event is PointerScrollEvent) {
      final double delta = event.scrollDelta.dy;
      if (delta.abs() < _scrollThreshold) return;

      if (delta > 0) {
        if (_currentIndex < _pages.length - 1) {
          _changePage(_currentIndex + 1);
        }
      } else {
        if (_currentIndex > 0) {
          _changePage(_currentIndex - 1);
        }
      }
    }
  }

  void _changePage(int index) {
    if (index == _currentIndex) return;
    setState(() {
      _currentIndex = index;
      _isAnimating = true;
    });

    Future.delayed(_transitionDuration, () {
      if (mounted) {
        setState(() {
          _isAnimating = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // 0(Hero), 2(Mentors), 4(Schedule)은 어두운 배경, 1(Intro), 3(Curriculum)은 밝은 배경
    final bool isDarkBackground =
        _currentIndex == 0 || _currentIndex == 2 || _currentIndex == 4;
    final Color activeColor = isDarkBackground ? Colors.white : Colors.black87;
    final Color inactiveColor =
        isDarkBackground ? Colors.white38 : Colors.black26;

    return Scaffold(
      body: Stack(
        children: [
          // 메인 콘텐츠
          Listener(
            onPointerSignal: _onScroll,
            child: AnimatedSwitcher(
              duration: _transitionDuration,
              switchInCurve: Curves.easeInOut,
              switchOutCurve: Curves.easeInOut,
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: SizedBox.expand(
                key: ValueKey<int>(_currentIndex),
                child: _pages[_currentIndex],
              ),
            ),
          ),

          // 우측 인디케이터
          Positioned(
            right: 30,
            top: 0,
            bottom: 0,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(_pages.length, (index) {
                  final bool isActive = index == _currentIndex;
                  return GestureDetector(
                    onTap: () => _changePage(index),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      // 터치 영역 확보를 위한 투명 컨테이너
                      padding: const EdgeInsets.all(4),
                      color: Colors.transparent,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isActive ? activeColor : inactiveColor,
                          boxShadow: isActive
                              ? [
                                  BoxShadow(
                                    color: activeColor.withValues(alpha: 0.3),
                                    blurRadius: 8,
                                    spreadRadius: 2,
                                  )
                                ]
                              : null,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
