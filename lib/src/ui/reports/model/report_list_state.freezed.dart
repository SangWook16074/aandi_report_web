// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportListState {
  List<ReportSummary> get reports => throw _privateConstructorUsedError;

  /// Create a copy of ReportListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportListStateCopyWith<ReportListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportListStateCopyWith<$Res> {
  factory $ReportListStateCopyWith(
          ReportListState value, $Res Function(ReportListState) then) =
      _$ReportListStateCopyWithImpl<$Res, ReportListState>;
  @useResult
  $Res call({List<ReportSummary> reports});
}

/// @nodoc
class _$ReportListStateCopyWithImpl<$Res, $Val extends ReportListState>
    implements $ReportListStateCopyWith<$Res> {
  _$ReportListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = null,
  }) {
    return _then(_value.copyWith(
      reports: null == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportSummary>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportListStateImplCopyWith<$Res>
    implements $ReportListStateCopyWith<$Res> {
  factory _$$ReportListStateImplCopyWith(_$ReportListStateImpl value,
          $Res Function(_$ReportListStateImpl) then) =
      __$$ReportListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReportSummary> reports});
}

/// @nodoc
class __$$ReportListStateImplCopyWithImpl<$Res>
    extends _$ReportListStateCopyWithImpl<$Res, _$ReportListStateImpl>
    implements _$$ReportListStateImplCopyWith<$Res> {
  __$$ReportListStateImplCopyWithImpl(
      _$ReportListStateImpl _value, $Res Function(_$ReportListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = null,
  }) {
    return _then(_$ReportListStateImpl(
      reports: null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportSummary>,
    ));
  }
}

/// @nodoc

class _$ReportListStateImpl implements _ReportListState {
  const _$ReportListStateImpl({final List<ReportSummary> reports = const []})
      : _reports = reports;

  final List<ReportSummary> _reports;
  @override
  @JsonKey()
  List<ReportSummary> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  String toString() {
    return 'ReportListState(reports: $reports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportListStateImpl &&
            const DeepCollectionEquality().equals(other._reports, _reports));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reports));

  /// Create a copy of ReportListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportListStateImplCopyWith<_$ReportListStateImpl> get copyWith =>
      __$$ReportListStateImplCopyWithImpl<_$ReportListStateImpl>(
          this, _$identity);
}

abstract class _ReportListState implements ReportListState {
  const factory _ReportListState({final List<ReportSummary> reports}) =
      _$ReportListStateImpl;

  @override
  List<ReportSummary> get reports;

  /// Create a copy of ReportListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportListStateImplCopyWith<_$ReportListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
