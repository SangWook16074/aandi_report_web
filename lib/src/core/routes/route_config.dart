import 'package:a_and_i_report_web_server/src/feature/promotion/ui/faq_light_page.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/faq_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_view_model.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_state.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/views/login_ui.dart';
import 'package:a_and_i_report_web_server/src/feature/home/ui/views/home_ui.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/report_detail_ui.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/promotion_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web/web.dart' as html;

part 'route_config.g.dart';

/// 앱의 라우팅 설정을 관리하는 Provider입니다.
///
/// [GoRouter]를 사용하여 URL 기반의 라우팅을 처리합니다.
/// [authViewModelProvider]를 구독(watch)하여 인증 상태에 따른 리다이렉션 로직을 수행합니다.
///
/// **리다이렉션 규칙:**
/// - 로그인되지 않은 사용자가 보호된 페이지(`/report` 등)에 접근하면 `/sign-in`으로 이동합니다.
/// - 이미 로그인된 사용자가 로그인 페이지(`/sign-in`)에 접근하면 `/report`로 이동합니다.
/// - `/promotion` 페이지는 로그인 여부와 관계없이 접근 가능합니다.
///
/// **정의된 라우트:**
/// - `/`: 루트 경로. 인증 상태에 따라 `/report` 또는 `/sign-in`으로 리다이렉트합니다.
/// - `/sign-in`: 로그인 화면 ([LoginUI]).
/// - `/report`: 과제 목록 화면 ([HomeUI]).
///   - `/report/:id`: 과제 상세 화면 ([ReportDetailUI]).
/// - `/promotion`: 홍보 포스터 화면 ([PromotionPage]).
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

          final isAtReport = state.matchedLocation == "/report";

          // 로그인되지 않은 상태에서 보호된 페이지 접근 시 로그인 페이지로 리다이렉트
          // 단, 프로모션 페이지는 제외
          if (!isLoggedIn && isAtReport) return '/sign-in';

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
        name: "A&I",
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
        name: "A&I 로그인",
        builder: (context, state) {
          html.document.title = "A&I 로그인";
          return const LoginUI();
        },
      ),
      GoRoute(
        path: '/promotion',
        name: "2026 팀 A&I 모집안내",
        builder: (context, state) {
          html.document.title = "2026 팀 A&I 모집안내";
          return const PromotionPage();
        },
      ),
      GoRoute(
        path: '/faq',
        name: "자주 묻는 질문 | A&I",
        builder: (context, state) {
          html.document.title = "자주 묻는 질문 | A&I";
          return const FAQLightPage();
        },
      ),
      GoRoute(
        path: '/report',
        name: "A&I 과제",
        builder: (context, state) {
          html.document.title = "A&I 과제";
          return const HomeUI();
        },
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
