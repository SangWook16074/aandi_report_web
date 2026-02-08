// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authViewModelHash() => r'17388a9aba7d217d7ed448be12849ac7606bb896';

/// 앱 전반의 인증 상태를 관리하는 ViewModel입니다.
///
/// [AsyncNotifier]를 상속받아 인증 상태([AuthState])를 비동기적으로 관리합니다.
/// `keepAlive: true`로 설정되어 있어, 앱 실행 중 상태가 유지됩니다.
///
/// Copied from [AuthViewModel].
@ProviderFor(AuthViewModel)
final authViewModelProvider =
    NotifierProvider<AuthViewModel, AuthState>.internal(
  AuthViewModel.new,
  name: r'authViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthViewModel = Notifier<AuthState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
