import 'package:a_and_i_report_web_server/src/feature/home/home_page.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/faq_light_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_view_model.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_state.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/views/login_ui.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/home_ui.dart';
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
///
class _RiverpodRefreshNotifier extends ChangeNotifier {
  _RiverpodRefreshNotifier(Ref ref) {
    // authViewModelProvider의 상태가 변할 때마다 notifyListeners()를 호출합니다.
    ref.listen(authViewModelProvider, (_, __) => notifyListeners());
  }
}

@riverpod
GoRouter goRouter(Ref ref) {
  final authState = ref.watch(authViewModelProvider);

  return GoRouter(
    initialLocation: '/',
    refreshListenable: _RiverpodRefreshNotifier(ref),
    redirect: (context, state) {
      final status = authState.status;
      final isLoggedIn = status == AuthenticationStatus.authenticated;
      final isUnauthenticated = status == AuthenticationStatus.unauthenticated;
      final location = state.matchedLocation;
      print("시작 : $location");

      // 1. 비로그인 상태인데 /report 하위 페이지로 접근하려 할 때
      if (isUnauthenticated && location.startsWith('/report')) {
        print("비로그인 상태인데 : $location");
        final fromPath = state.uri.toString();
        return '/sign-in?from=${Uri.encodeComponent(fromPath)}';
      }

      // 2. 로그인에 성공했는데 현재 위치가 /sign-in 인 경우
      if (isLoggedIn && location == '/sign-in') {
        print("로그인에 성공했는데 : $location");
        final from = state.uri.queryParameters['from'];
        // from 파라미터가 있으면 그곳으로, 없으면 기본 페이지로 이동
        return (from != null && from.isNotEmpty) ? from : '/report';
      }

      // 리다이렉트가 필요 없는 경우 null 반환
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        name: "A&I",
        pageBuilder: (context, state) {
          html.document.title = "A&I";
          return NoTransitionPage(child: const HomePage());
        },
      ),
      GoRoute(
        path: '/sign-in',
        name: "로그인 | A&I",
        pageBuilder: (context, state) {
          html.document.title = "로그인 | A&I";
          return NoTransitionPage(child: const LoginUI());
        },
      ),
      GoRoute(
        path: '/promotion',
        name: "2026 팀 A&I 모집안내",
        pageBuilder: (context, state) {
          html.document.title = "2026 팀 A&I 모집안내";
          return NoTransitionPage(child: const PromotionPage());
        },
      ),
      GoRoute(
        path: '/faq',
        name: "자주 묻는 질문 | A&I",
        pageBuilder: (context, state) {
          html.document.title = "자주 묻는 질문 | A&I";
          return NoTransitionPage(child: const FAQLightPage());
        },
      ),
      GoRoute(
        path: '/report',
        name: "멘토링 | A&I",
        pageBuilder: (context, state) {
          html.document.title = "멘토링 | A&I";
          return NoTransitionPage(child: const HomeUI());
        },
        routes: [
          GoRoute(
            path: ':id',
            pageBuilder: (context, state) => NoTransitionPage(
              child: ReportDetailUI(
                id: state.pathParameters['id']!,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
