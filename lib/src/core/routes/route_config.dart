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
  final authStateAsync = ref.watch(authViewModelProvider);
  return GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      return authStateAsync.when(
        data: (authState) {
          final isLoggedIn = authState is Authenticated;
          final isAtLogin = state.matchedLocation == '/sign-in';
          final isAtReport = state.matchedLocation.startsWith('/report');

          // 로그인되지 않은 상태에서 보호된 페이지 접근 시 로그인 페이지로 리다이렉트
          if (!isLoggedIn && !isAtLogin) return '/sign-in';

          // 로그인된 상태에서 로그인 페이지 접근 시 메인 페이지로 리다이렉트
          if (isLoggedIn && isAtLogin) return '/report';

          return null;
        },
        loading: () => null, // 로딩 중에는 리다이렉트하지 않음
        error: (_, __) => '/sign-in', // 에러 시 로그인 페이지로 리다이렉트
      );
    },
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) {
          return authStateAsync.when(
            data: (authState) =>
                (authState is Authenticated) ? '/report' : '/sign-in',
            loading: () => '/sign-in',
            error: (_, __) => '/sign-in',
          );
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
