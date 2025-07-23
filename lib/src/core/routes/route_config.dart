import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_view_model.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_state.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/views/login_ui.dart';
import 'package:a_and_i_report_web_server/src/feature/home/ui/views/home_ui.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/report_detail_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'route_config.g.dart';

@riverpod
GoRouter goRouter(Ref ref) {
  final authState = ref.watch(authViewModelProvider).value;
  return GoRouter(
    initialLocation: '/',
    // redirect: (context, state) {
    //   final isLoggedIn = authState is Authenticated;
    //   final isAtLogin = state.matchedLocation == '/sign-in';

    //   if (!isLoggedIn && !isAtLogin) return '/sign-in';
    //   if (isLoggedIn && isAtLogin) return '/report';
    //   return null;
    // },
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) {
          return (authState is Authenticated) ? '/report' : '/sign-in';
        },
      ),
      GoRoute(
        path: '/sign-in',
        builder: (context, state) => const LoginUI(),
      ),
      GoRoute(
        path: '/report',
        builder: (context, state) => const HomeUI(),
        routes: [
          GoRoute(
            path: ':id',
            builder: (context, state) => ReportDetailUI(
              id: state.pathParameters['id']!,
            ),
          ),
        ],
      ),
    ],
  );
}
