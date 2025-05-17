import 'package:a_and_i_report_web_server/src/feature/home/ui/views/home_ui.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/views/login_ui.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/report_detail_ui.dart';
import 'package:go_router/go_router.dart';

// 라우팅 설정
final routes = GoRouter(routes: [
  // GoRoute(
  //   path: "/",
  //   builder: (context, state) => const LoginUI(),
  // ),
  GoRoute(path: "/", builder: (context, state) => const HomeUI(), routes: [
    GoRoute(
      path: "/report/:id",
      builder: (context, state) => ReportDetailUI(
        id: state.pathParameters["id"]!,
      ),
    ),
  ])
]);
