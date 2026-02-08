import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/domain/entities/faq_list_filter.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/apply_view.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/faq_list_view_event.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/faq_list_view_model.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/faq_list_view_state.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/views/apply_button_view.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/widgets/promotion_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FaqFilterLightView extends ConsumerWidget {
  const FaqFilterLightView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final faqListViewState = ref.watch(faqListViewModelProvider);
    final faqListViewModel = ref.read(faqListViewModelProvider.notifier);
    final isMobile = ResponsiveLayout.isMobile(context);
    return Row(
      children: FaqListFilter.values.map((filter) {
        final isSelected = filter == faqListViewState.filter;
        return InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            faqListViewModel.add(FaqListViewFilterChanged(filter: filter));
          },
          child: AnimatedContainer(
            margin: EdgeInsets.symmetric(horizontal: isMobile ? 4.0 : 8.0),
            padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 15 : 20.0, vertical: 4.0),
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              // 선택: 검은 배경, 미선택: 밝은 회색 배경
              color: isSelected ? Colors.black : Colors.grey[200],
              borderRadius: BorderRadius.circular(999),
            ),
            alignment: Alignment.center,
            child: Text(
              filter.label,
              style: TextStyle(
                  height: -1,
                  fontSize: isMobile ? 15 : 18,
                  fontWeight: FontWeight.w500,
                  // 선택: 흰 글씨, 미선택: 짙은 회색 글씨
                  color: isSelected ? Colors.white : Colors.grey[600]),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class FAQLightPage extends ConsumerStatefulWidget {
  const FAQLightPage({super.key});

  @override
  ConsumerState<FAQLightPage> createState() => _FAQLightPageState();
}

class _FAQLightPageState extends ConsumerState<FAQLightPage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _bannerKey = GlobalKey();
  bool _isBannerVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_checkBannerVisibility);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_checkBannerVisibility);
    _scrollController.dispose();
    super.dispose();
  }

  void _checkBannerVisibility() {
    final RenderBox? renderBox =
        _bannerKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final position = renderBox.localToGlobal(Offset.zero);
      final viewportHeight = MediaQuery.of(context).size.height;

      // Floating Banner는 bottom: 20 위치에 있음.
      // Static Banner는 margin bottom이 isMobile ? 20 : 30 임.
      // 따라서 Static Banner의 bottom(renderBox.size.height 포함)이
      // viewportHeight + (marginDiff) 위치에 도달했을 때 교체해야 함.
      final isMobile = ResponsiveLayout.isMobile(context);
      final marginDiff = isMobile ? 0 : 10;

      // Static Banner의 바닥이 Floating Banner의 바닥 시각적 위치보다 위로 올라오면
      // Floating Banner를 숨겨서(Static Banner가 보이게) 멈춘 듯한 효과를 줌.
      final isVisible = (position.dy + renderBox.size.height) <=
          (viewportHeight + marginDiff);

      if (_isBannerVisible != isVisible) {
        setState(() {
          _isBannerVisible = isVisible;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveLayout.isMobile(context);
    final faqListViewModel = ref.watch(faqListViewModelProvider);
    final isEnable = ref.watch(applyViewProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Main Content
          SingleChildScrollView(
            controller: _scrollController,
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 1000,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 100.0, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '자주 묻는 질문',
                              style: TextStyle(
                                fontSize: isMobile ? 24 : 58,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                letterSpacing: -0.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '신규 동아리원 모집 중 가장 자주 묻는 질문에 대한 답변입니다.',
                              style: TextStyle(
                                fontSize: isMobile ? 15 : 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[700],
                                letterSpacing: -0.5,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: isMobile ? 20 : 40,
                      ),

                      const FaqFilterLightView(),
                      SizedBox(
                        height: isMobile ? 10 : 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: faqListViewModel.filteredItems.map((faq) {
                          return Container(
                            margin: EdgeInsets.all(6.0),
                            padding: EdgeInsets.symmetric(
                                vertical: isMobile ? 15 : 20.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey[200],
                                border: Border.all(
                                    width: 2.0, color: Colors.white10)),
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                              ),
                              child: ExpansionTile(
                                leading: Container(
                                  padding: EdgeInsets.all(6.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2.0,
                                        color: Colors.black12,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.grey[200]),
                                  child: Icon(
                                    Icons.question_answer_outlined,
                                    color: Color(0xff3B83F6),
                                    size: isMobile ? 20 : 25,
                                  ),
                                ),
                                showTrailingIcon: true,
                                title: Text(
                                  faq.question,
                                  style: TextStyle(
                                    fontSize: isMobile ? 15 : 20,
                                    height: -1,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    letterSpacing: -0.5,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                subtitle: Text(
                                  faq.type.label,
                                  style: TextStyle(
                                    fontSize: isMobile ? 12 : 15,
                                    height: -1,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[600],
                                    letterSpacing: -0.5,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                collapsedIconColor: Color(0xff3B83F6),
                                shape: Border.all(color: Colors.transparent),
                                iconColor: Color(0xff3B83F6),
                                expandedAlignment: Alignment.centerLeft,
                                expansionAnimationStyle: AnimationStyle(
                                    duration: Duration(
                                      milliseconds: 200,
                                    ),
                                    curve: Curves.linear,
                                    reverseCurve: Curves.linear),
                                children: [
                                  Divider(
                                    height: isMobile ? 30 : 50,
                                    color: Colors.grey[200],
                                    thickness: 2.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 70, vertical: 40),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            faq.answer,
                                            style: TextStyle(
                                              fontSize: isMobile ? 15 : 18,
                                              height: -1,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black54,
                                              letterSpacing: -0.5,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      // 하단 배너 (스크롤 감지 대상)
                      if (isEnable)
                        Opacity(
                          opacity: _isBannerVisible ? 1.0 : 0.0,
                          child: Container(
                            key: _bannerKey,
                            margin: EdgeInsets.symmetric(
                                vertical: isMobile ? 20.0 : 30.0),
                            child: Center(
                              child: PromotionBottomBar(),
                            ),
                          ),
                        ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Floating Bottom Banner
          if (isEnable)
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              bottom: 20, // 항상 하단 20px 위치에 고정
              left: 0,
              right: 0,
              child: Opacity(
                opacity: _isBannerVisible
                    ? 0.0
                    : 1.0, // _isBannerVisible이 true면 (스크롤된 배너가 보이면) 투명하게
                // duration: const Duration(milliseconds: 300),
                // curve: Curves.easeInOut,
                child: Center(
                  child: PromotionBottomBar(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
