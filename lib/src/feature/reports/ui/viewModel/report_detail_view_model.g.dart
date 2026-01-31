// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reportDetailViewModelHash() =>
    r'9b4103e97cecd53e11d5fddb92364820c85895ec';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ReportDetailViewModel
    extends BuildlessAutoDisposeAsyncNotifier<ReportDatailState> {
  late final String id;

  FutureOr<ReportDatailState> build(
    String id,
  );
}

/// 과제 상세 화면의 상태를 관리하는 ViewModel입니다.
///
/// [AutoDisposeFamilyAsyncNotifier]를 상속받아 구현되었습니다.
/// `family` 수정자를 사용하여 [id] 파라미터를 받아 특정 과제의 상세 정보를 로드합니다.
///
/// Copied from [ReportDetailViewModel].
@ProviderFor(ReportDetailViewModel)
const reportDetailViewModelProvider = ReportDetailViewModelFamily();

/// 과제 상세 화면의 상태를 관리하는 ViewModel입니다.
///
/// [AutoDisposeFamilyAsyncNotifier]를 상속받아 구현되었습니다.
/// `family` 수정자를 사용하여 [id] 파라미터를 받아 특정 과제의 상세 정보를 로드합니다.
///
/// Copied from [ReportDetailViewModel].
class ReportDetailViewModelFamily
    extends Family<AsyncValue<ReportDatailState>> {
  /// 과제 상세 화면의 상태를 관리하는 ViewModel입니다.
  ///
  /// [AutoDisposeFamilyAsyncNotifier]를 상속받아 구현되었습니다.
  /// `family` 수정자를 사용하여 [id] 파라미터를 받아 특정 과제의 상세 정보를 로드합니다.
  ///
  /// Copied from [ReportDetailViewModel].
  const ReportDetailViewModelFamily();

  /// 과제 상세 화면의 상태를 관리하는 ViewModel입니다.
  ///
  /// [AutoDisposeFamilyAsyncNotifier]를 상속받아 구현되었습니다.
  /// `family` 수정자를 사용하여 [id] 파라미터를 받아 특정 과제의 상세 정보를 로드합니다.
  ///
  /// Copied from [ReportDetailViewModel].
  ReportDetailViewModelProvider call(
    String id,
  ) {
    return ReportDetailViewModelProvider(
      id,
    );
  }

  @override
  ReportDetailViewModelProvider getProviderOverride(
    covariant ReportDetailViewModelProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'reportDetailViewModelProvider';
}

/// 과제 상세 화면의 상태를 관리하는 ViewModel입니다.
///
/// [AutoDisposeFamilyAsyncNotifier]를 상속받아 구현되었습니다.
/// `family` 수정자를 사용하여 [id] 파라미터를 받아 특정 과제의 상세 정보를 로드합니다.
///
/// Copied from [ReportDetailViewModel].
class ReportDetailViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ReportDetailViewModel,
        ReportDatailState> {
  /// 과제 상세 화면의 상태를 관리하는 ViewModel입니다.
  ///
  /// [AutoDisposeFamilyAsyncNotifier]를 상속받아 구현되었습니다.
  /// `family` 수정자를 사용하여 [id] 파라미터를 받아 특정 과제의 상세 정보를 로드합니다.
  ///
  /// Copied from [ReportDetailViewModel].
  ReportDetailViewModelProvider(
    String id,
  ) : this._internal(
          () => ReportDetailViewModel()..id = id,
          from: reportDetailViewModelProvider,
          name: r'reportDetailViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$reportDetailViewModelHash,
          dependencies: ReportDetailViewModelFamily._dependencies,
          allTransitiveDependencies:
              ReportDetailViewModelFamily._allTransitiveDependencies,
          id: id,
        );

  ReportDetailViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<ReportDatailState> runNotifierBuild(
    covariant ReportDetailViewModel notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(ReportDetailViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: ReportDetailViewModelProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ReportDetailViewModel,
      ReportDatailState> createElement() {
    return _ReportDetailViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReportDetailViewModelProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ReportDetailViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<ReportDatailState> {
  /// The parameter `id` of this provider.
  String get id;
}

class _ReportDetailViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ReportDetailViewModel,
        ReportDatailState> with ReportDetailViewModelRef {
  _ReportDetailViewModelProviderElement(super.provider);

  @override
  String get id => (origin as ReportDetailViewModelProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
