import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/promotion_ui_state.dart';
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

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_checkBottomBarVisibility);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_checkBottomBarVisibility);
    _scrollController.dispose();
    super.dispose();
  }

  void _checkBottomBarVisibility() {
    final RenderBox? renderBox =
        _bottomBarKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final position = renderBox.localToGlobal(Offset.zero);
      final viewportHeight = MediaQuery.of(context).size.height;

      // Floating Banner는 bottom: 30 위치에 있음.
      // 따라서 Static Banner의 bottom(renderBox.size.height 포함)이
      // viewportHeight - 30 위치에 도달했을 때 교체해야 함.
      // 30은 Floating Banner의 bottom margin.
      // 조금 더 여유를 두어 20정도 보정.
      // Static Banner의 상단이 화면 하단에 보이기 시작하면 반응하도록 조정하거나,
      // FAQ 페이지처럼 겹치는 순간을 계산.

      // FAQ 페이지 로직 참조:
      // final isVisible = (position.dy + renderBox.size.height) <= (viewportHeight + marginDiff);

      // PromotionPage의 Floating Bar는 bottom: 30에 위치.
      // Static Bar가 스크롤되어 올라와서 Floating Bar의 위치와 겹쳐지는 순간 숨겨야 함.

      // FAQ 로직:
      // final isVisible = (position.dy + renderBox.size.height) <= (viewportHeight + marginDiff);
      // 이것은 Static Bar의 바닥이 화면 바닥보다 위로 올라갔을 때 (즉 완전히 화면에 들어왔거나, 어느정도 올라왔을 때)

      // 여기서는 "닿으면 고정" 이므로, Static Bar가 Floating Bar 위치만큼 올라왔을 때 숨기면 됨.
      // Floating Bar는 화면 하단에 고정되어 있음.
      // Static Bar의 실제 화면상 위치(position.dy)가 Floating Bar가 떠있는 위치보다 위로 올라오면 Floating Bar 숨김.

      // position.dy 는 Static Bar의 Top 위치.
      // Floating Bar는 바닥에서 30px 떨어져 있음.
      // 그러므로 Static Bar의 Top이 (Viewport Height - 30 - FloatingBarHeight) 보다 작으면?
      // 아니면 그냥 간단하게 Static Bar가 화면에 보이기 시작하면?

      // FAQ 예제 로직을 그대로 사용하되 marginDiff를 조정.
      // FAQ는 bottom: 20 사용. 여기는 bottom: 30 사용.
      final isVisible = (position.dy + renderBox.size.height) <=
          (viewportHeight - 30); // Floating bar position match

      if (_isBottomBarVisible != isVisible) {
        setState(() {
          _isBottomBarVisible = isVisible;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isHeroButtonVisible = ref.watch(heroApplyButtonVisibilityProvider);

    // Slide logic: Controlled ONLY by Hero visibility.
    // If Hero is visible, Floating bar is hidden (slid down).
    // If Hero is hidden, Floating bar is shown (slid up).
    final shouldSlideUp = !isHeroButtonVisible;

    // Docking logic: Controlled by Static Bar visibility.
    // If Static bar is visible (_isBottomBarVisible true), Floating bar hides (Opacity 0).
    // This makes it look like it "stops" and becomes the static bar.
    final shouldBeVisible = !_isBottomBarVisible;

    return Scaffold(
      backgroundColor: Colors.black, // 전체 배경색 통일
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                const PromotionHero(),
                const PromotionIntro(),
                const PromotionMentors(),
                const PromotionCurriculum(),
                PromotionSchedule(
                  bottomBarKey: _bottomBarKey,
                  isStaticBarVisible: _isBottomBarVisible,
                ),
              ],
            ),
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
