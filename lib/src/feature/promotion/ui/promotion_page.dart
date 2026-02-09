import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_hero.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_intro.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_mentors.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_curriculum.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_schedule.dart';

class PromotionPage extends ConsumerStatefulWidget {
  const PromotionPage({super.key});

  @override
  ConsumerState<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends ConsumerState<PromotionPage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _bottomBarKey = GlobalKey();
  bool _isBottomBarVisible = false;
  bool _isHeroVisible = true; // Hero 섹션 가시성 상태

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    _checkHeroVisibility();
    _checkBottomBarVisibility();
  }

  void _checkHeroVisibility() {
    // Hero 섹션의 높이는 최소 화면 높이(100vh)이므로,
    // 대략 500px 정도 스크롤되면 Hero의 메인 콘텐츠(버튼 등)는 화면 밖으로 나갔다고 판단.
    // 더 정교하게 하려면 GlobalKey를 사용하여 Hero의 실제 높이를 구할 수 있음.
    final heroIsVisible = _scrollController.offset < 500;

    if (_isHeroVisible != heroIsVisible) {
      setState(() {
        _isHeroVisible = heroIsVisible;
      });
    }
  }

  void _checkBottomBarVisibility() {
    final RenderBox? renderBox =
        _bottomBarKey.currentContext?.findRenderObject() as RenderBox?;

    // Static Bar가 화면에 렌더링되지 않았다면(화면 밖 등), Floating Bar를 보여줘야 함.
    if (renderBox == null) {
      if (_isBottomBarVisible) {
        setState(() {
          _isBottomBarVisible = false;
        });
      }
      return;
    }

    final position = renderBox.localToGlobal(Offset.zero);
    final viewportHeight = MediaQuery.of(context).size.height;

    final isVisible = (position.dy + renderBox.size.height) <=
        (viewportHeight - 30); // Floating bar position match

    if (_isBottomBarVisible != isVisible) {
      setState(() {
        _isBottomBarVisible = isVisible;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Slide logic: Controlled by Hero visibility (Scroll Offset).
    // If Hero is visible, Floating bar is hidden (slid down).
    // If Hero is hidden, Floating bar is shown (slid up).
    final shouldSlideUp = !_isHeroVisible;

    // Docking logic: Controlled by Static Bar visibility.
    // If Static bar is visible (_isBottomBarVisible true), Floating bar hides (Opacity 0).
    // This makes it look like it "stops" and becomes the static bar.
    final shouldBeVisible = !_isBottomBarVisible;

    return Scaffold(
      backgroundColor: Colors.black, // 전체 배경색 통일
      body: Stack(
        children: [
          ListView(
            controller: _scrollController,
            // cacheExtent를 넉넉하게 주어 스크롤 시 미리 빌드되도록 함 (버벅임 방지)
            cacheExtent: 1000,
            children: [
              const RepaintBoundary(child: PromotionHero()),
              const SizedBox(
                height: 100,
              ),
              const RepaintBoundary(child: PromotionIntro()),
              const RepaintBoundary(child: PromotionMentors()),
              const RepaintBoundary(child: PromotionCurriculum()),
              RepaintBoundary(
                child: PromotionSchedule(
                  bottomBarKey: _bottomBarKey,
                  isStaticBarVisible: _isBottomBarVisible,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: AnimatedSlide(
              offset: shouldSlideUp ? Offset.zero : const Offset(0, 2),
              duration: 300.ms,
              curve: Curves.easeInOut,
              child: IgnorePointer(
                ignoring: !shouldBeVisible,
                child: Opacity(
                  opacity: shouldBeVisible ? 1.0 : 0.0,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: PromotionBottomBar(),
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
