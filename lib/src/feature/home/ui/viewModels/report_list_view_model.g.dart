// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_list_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reportListViewModelHash() =>
    r'7ed5a7a4dcfde6772e27a9d68a4ef3c89bc75f14';

/// 과제 목록 화면의 상태를 관리하는 ViewModel입니다.
///
/// [AutoDisposeAsyncNotifier]를 상속받아 구현되었습니다.
/// 화면 진입 시 [build] 메서드가 실행되어 과제 목록을 자동으로 로드합니다.
///
/// Copied from [ReportListViewModel].
@ProviderFor(ReportListViewModel)
final reportListViewModelProvider = AutoDisposeAsyncNotifierProvider<
    ReportListViewModel, ReportListState>.internal(
  ReportListViewModel.new,
  name: r'reportListViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$reportListViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ReportListViewModel = AutoDisposeAsyncNotifier<ReportListState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
