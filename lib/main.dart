import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:a_and_i_report_web_server/src/core/routes/route_config.dart';
import 'package:a_and_i_report_web_server/src/core/theme/app_theme.dart';
import 'package:a_and_i_report_web_server/src/core/utils/logger.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  usePathUrlStrategy();
  runApp(ProviderScope(observers: [Logger()], child: const MyApp()));
}

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
    );
  }
}
