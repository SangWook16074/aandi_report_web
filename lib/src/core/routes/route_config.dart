import 'package:a_and_i_report_web_server/src/ui/home_screen.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/view/report_detail_view.dart';
import 'package:go_router/go_router.dart';

// 라우팅 설정
final routes = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const HomeScreen(), routes: [
    GoRoute(
      path: "/report/:id",
      builder: (context, state) => ReportDetailView(
        id: state.pathParameters["id"]!,
      ),
    ),
  ])
]);
