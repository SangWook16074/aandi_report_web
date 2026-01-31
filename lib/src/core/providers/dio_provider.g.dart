// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'a03da399b44b3740dc4fcfc6716203041d66ff01';

/// HTTP 통신을 위한 [Dio] 인스턴스를 제공하는 Provider입니다.
///
/// 애플리케이션 전반에서 API 호출 시 이 Provider를 통해 Dio 클라이언트를 주입받아 사용합니다.
/// 필요한 경우 Interceptor나 기본 옵션(BaseOptions)을 이곳에서 설정할 수 있습니다.
///
/// Copied from [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DioRef = AutoDisposeProviderRef<Dio>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
