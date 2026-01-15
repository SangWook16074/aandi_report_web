import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:a_and_i_report_web_server/src/core/routes/route_config.dart';
import 'package:a_and_i_report_web_server/src/core/theme/app_theme.dart';
import 'package:a_and_i_report_web_server/src/core/utils/logger.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// 애플리케이션의 진입점(Entry Point)입니다.
///
/// 웹 환경에서의 깔끔한 URL 처리를 위해 [usePathUrlStrategy]를 설정하고,
/// Riverpod 상태 관리를 위한 [ProviderScope]로 앱을 감싸서 실행합니다.
/// [Logger]를 옵저버로 등록하여 상태 변경 로그를 확인합니다.
void main() {
  usePathUrlStrategy();
  runApp(ProviderScope(observers: [Logger()], child: const MyApp()));
}

/// 앱의 루트 위젯입니다.
///
/// [MaterialApp.router]를 사용하여 [goRouterProvider]에서 정의된 라우팅 설정을 적용합니다.
/// 앱 전반에 걸친 테마([theme])와 디버그 배너 설정을 관리합니다.
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: "A&I 과제",
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter,
      theme: theme,
      scrollBehavior: const AppScrollBehavior(),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  const AppScrollBehavior();

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
