import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/faq_page.dart';

void main() {
  testWidgets('FAQPage renders correctly', (WidgetTester tester) async {
    // Build the FAQPage widget.
    await tester.pumpWidget(const MaterialApp(home: FAQPage()));

    // Verify that the title is displayed.
    expect(find.text('자주 묻는 질문'), findsOneWidget);
    expect(find.text('궁금한 점을 확인해보세요.'), findsOneWidget);

    // Verify that FAQ items are displayed (at least the questions).
    expect(find.text('지원 자격이 어떻게 되나요?'), findsOneWidget);
    expect(find.text('활동 기간은 언제까지인가요?'), findsOneWidget);
    
    // Tap on the first item to expand it.
    await tester.tap(find.text('지원 자격이 어떻게 되나요?'));
    await tester.pumpAndSettle();

    // Verify that the answer is displayed after expansion.
    expect(find.textContaining('A&I 동아리는 열정 있는 대학생이라면 누구나 지원 가능합니다'), findsOneWidget);
  });
}
