import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_view_model.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_state.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/views/login_ui.dart';
import 'package:a_and_i_report_web_server/src/feature/home/ui/views/home_ui.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/view/report_detail_ui.dart';

class AuthStateNotifier extends ValueNotifier<AuthState?> {
  AuthStateNotifier(this.ref) : super(null) {
    ref.listen<AsyncValue<AuthState>>(authViewModelProvider, (prev, next) {
      if (next is AsyncData) {
        value = next.value;
        log(value.toString());
        notifyListeners();
      }
    });
  }
  final Ref ref;
}

final authStateNotifierProvider = Provider<AuthStateNotifier>((ref) {
  return AuthStateNotifier(ref);
});

final goRouterProvider = Provider<GoRouter>((ref) {
  final refreshListenable = ref.watch(authStateNotifierProvider);
  return GoRouter(
    initialLocation: '/',
    refreshListenable: refreshListenable,
    redirect: (context, state) {
      final authState = refreshListenable.value;
      final isLoggedIn = authState is Authenticated;
      final isAtLogin = state.matchedLocation == '/sign-in';

      if (!isLoggedIn && !isAtLogin) return '/sign-in';
      if (isLoggedIn && isAtLogin) return '/report';
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) {
          final authState = refreshListenable.value;
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
});
