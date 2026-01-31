import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/faq_list_view_model.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/faq_list_view_state.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/views/faq_filter_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class FaqItem {
//   final String category;
//   final String question;
//   final String answer;

//   const FaqItem({
//     required this.category,
//     required this.question,
//     required this.answer,
//   });
// }

// const faqList = [
//   FaqItem(
//     category: '지원 자격 관련',
//     question: '재학생만 지원 가능한가요? 휴학생이나 졸업생도 지원할 수 있나요?',
//     answer:
//         '네, 모두 환영합니다! 재학생과 휴학생은 물론 졸업생까지 A&I와 함께 성장하고 싶은 분이라면 누구든 지원 가능합니다.',
//   ),
//   FaqItem(
//     category: '지원 자격 관련',
//     question: '코딩을 전혀 모르는 전공자도 지원할 수 있나요?',
//     answer:
//         '물론입니다. 전공자이지만 코딩 경험이 없는 분들과 비전공자 분들을 위해 1차 과정(코딩 입문 및 기초)이 체계적으로 준비되어 있습니다. 기초부터 탄탄하게 다질 수 있으니 걱정 말고 지원해 주세요.',
//   ),
//   FaqItem(
//     category: '지원 자격 관련',
//     question: '디자이너 직군은 따로 모집하지 않나요?',
//     answer:
//         '아쉽게도 이번 상반기 모집에는 포함되지 않았습니다. 디자이너 모집은 올해 6월 이후(하반기)에 예정되어 있으니, 그때 많은 관심 부탁드립니다!',
//   ),
//   FaqItem(
//     category: '활동 및 운영 관련',
//     question: '정기 모임은 언제, 어디서 진행되나요?',
//     answer:
//         '구체적인 시간과 장소는 최종 확정 전이나, 참고를 위해 말씀드리면 2025년까지는 매주 토요일에 정기 활동(Core Time)을 진행했습니다. 이번 기수도 비슷한 일정으로 운영될 가능성이 높습니다.',
//   ),
//   FaqItem(
//     category: '활동 및 운영 관련',
//     question: '개인 노트북은 꼭 필요한가요?',
//     answer:
//         '네, 필수입니다. 대부분의 과정이 직접 코드를 작성하는 실습(Hands-on) 세션으로 진행됩니다. 원활한 참여와 학습을 위해 개인 노트북을 꼭 지참해 주시기 바랍니다.',
//   ),
//   FaqItem(
//     category: '활동 및 운영 관련',
//     question: '2차 과정의 트랙(Flutter / Spring Boot)은 하나만 선택해야 하나요?',
//     answer:
//         '네, 한 가지 트랙만 선택하여 수강하실 수 있습니다. 이는 제약이라기보다, 여러분이 하나의 기술을 깊이 있게 파고들어 확실한 나만의 무기로 만들 수 있도록 돕기 위함이니 양해 부탁드립니다.',
//   ),
//   FaqItem(
//     category: '기타 문의',
//     question: '이전 기수의 프로젝트 결과물을 미리 볼 수 있나요?',
//     answer:
//         '아쉽게도 이전 기수까지는 프로젝트 관리를 개인에게 일임하여 동아리 차원의 공식 열람이 어렵습니다. 하지만 올해부터는 A&I에서 프로젝트를 직접 관리하고 아카이빙할 예정이므로, 다음 기수부터는 멋진 결과물들을 공유해 드릴 수 있을 것입니다!',
//   ),
// ];

class FAQPage extends ConsumerWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = ResponsiveLayout.isMobile(context);
    final faqListViewModel = ref.watch(faqListViewModelProvider);

    return Scaffold(
        backgroundColor: Color(0xff000000),
        body: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1000,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 100.0, horizontal: 20),
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
                              color: Colors.white,
                              letterSpacing: -0.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '신규 동아리원 모집 중 가장 자주 묻는 질문에 대한 답변입니다.',
                            style: TextStyle(
                              fontSize: isMobile ? 15 : 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
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
                    FaqFilterView(),
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
                              color: Color(0xff000000),
                              border: Border.all(
                                  width: 2.0, color: Colors.white10)),
                          child: ExpansionTile(
                            leading: Container(
                              padding: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.white10),
                              child: Icon(
                                Icons.question_answer_outlined,
                                color: Color(0xff9929EA),
                                size: isMobile ? 20 : 25,
                              ),
                            ),
                            showTrailingIcon: true,
                            title: Text(
                              faq.question,
                              style: TextStyle(
                                fontSize: isMobile ? 15 : 20,
                                height: -1,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff),
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
                                color: Colors.grey,
                                letterSpacing: -0.5,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            collapsedIconColor: Color(0xff9929EA),
                            iconColor: Color(0xff9929EA),
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
                                color: Colors.white10,
                                thickness: 2.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 70, vertical: 40),
                                child: Text(
                                  faq.answer,
                                  style: TextStyle(
                                    fontSize: isMobile ? 15 : 18,
                                    height: -1,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffffffff),
                                    letterSpacing: -0.5,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
