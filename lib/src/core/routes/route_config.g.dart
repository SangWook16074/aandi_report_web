// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_config.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'5c878125e9a68af84bb9de7f110d8148dfb321a1';

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
/// Copied from [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = AutoDisposeProvider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GoRouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
