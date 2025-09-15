import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_event.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_view_model.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LogoutButtonView extends ConsumerWidget {
  const LogoutButtonView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authStateAsync = ref.watch(authViewModelProvider);

    return authStateAsync.when(
      data: (authState) {
        if (authState is Authenticated) {
          final authViewModel = ref.read(authViewModelProvider.notifier);
          return IconButton(
            onPressed: () async {
              /// 버튼 탭시
              /// 로그아웃됨
              await authViewModel.onEvent(SignOut());
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Color(0xffff0000),
              size: 24,
            ),
            tooltip: '로그아웃',
            padding: EdgeInsets.all(8),
          );
        } else {
          // 인증되지 않은 상태에서는 빈 컨테이너 반환
          return SizedBox.shrink();
        }
      },
      loading: () => SizedBox.shrink(), // 로딩 중에는 빈 공간
      error: (_, __) => SizedBox.shrink(), // 에러 시에도 빈 공간
    );
  }
}
