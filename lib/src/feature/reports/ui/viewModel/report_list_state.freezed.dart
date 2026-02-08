// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportListState {
  List<ReportSummary> get reports;
  String get errorMsg;

  /// Create a copy of ReportListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportListStateCopyWith<ReportListState> get copyWith =>
      _$ReportListStateCopyWithImpl<ReportListState>(
          this as ReportListState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportListState &&
            const DeepCollectionEquality().equals(other.reports, reports) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(reports), errorMsg);

  @override
  String toString() {
    return 'ReportListState(reports: $reports, errorMsg: $errorMsg)';
  }
}

/// @nodoc
abstract mixin class $ReportListStateCopyWith<$Res> {
  factory $ReportListStateCopyWith(
          ReportListState value, $Res Function(ReportListState) _then) =
      _$ReportListStateCopyWithImpl;
  @useResult
  $Res call({List<ReportSummary> reports, String errorMsg});
}

/// @nodoc
class _$ReportListStateCopyWithImpl<$Res>
    implements $ReportListStateCopyWith<$Res> {
  _$ReportListStateCopyWithImpl(this._self, this._then);

  final ReportListState _self;
  final $Res Function(ReportListState) _then;

  /// Create a copy of ReportListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reports = null,
    Object? errorMsg = null,
  }) {
    return _then(_self.copyWith(
      reports: null == reports
          ? _self.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportSummary>,
      errorMsg: null == errorMsg
          ? _self.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReportListState].
extension ReportListStatePatterns on ReportListState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReportListState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportListState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReportListState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportListState():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReportListState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportListState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ReportSummary> reports, String errorMsg)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportListState() when $default != null:
        return $default(_that.reports, _that.errorMsg);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ReportSummary> reports, String errorMsg) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportListState():
        return $default(_that.reports, _that.errorMsg);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ReportSummary> reports, String errorMsg)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportListState() when $default != null:
        return $default(_that.reports, _that.errorMsg);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ReportListState implements ReportListState {
  const _ReportListState(
      {final List<ReportSummary> reports = const [], this.errorMsg = ""})
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
  @JsonKey()
  final String errorMsg;

  /// Create a copy of ReportListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportListStateCopyWith<_ReportListState> get copyWith =>
      __$ReportListStateCopyWithImpl<_ReportListState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportListState &&
            const DeepCollectionEquality().equals(other._reports, _reports) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reports), errorMsg);

  @override
  String toString() {
    return 'ReportListState(reports: $reports, errorMsg: $errorMsg)';
  }
}

/// @nodoc
abstract mixin class _$ReportListStateCopyWith<$Res>
    implements $ReportListStateCopyWith<$Res> {
  factory _$ReportListStateCopyWith(
          _ReportListState value, $Res Function(_ReportListState) _then) =
      __$ReportListStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<ReportSummary> reports, String errorMsg});
}

/// @nodoc
class __$ReportListStateCopyWithImpl<$Res>
    implements _$ReportListStateCopyWith<$Res> {
  __$ReportListStateCopyWithImpl(this._self, this._then);

  final _ReportListState _self;
  final $Res Function(_ReportListState) _then;

  /// Create a copy of ReportListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reports = null,
    Object? errorMsg = null,
  }) {
    return _then(_ReportListState(
      reports: null == reports
          ? _self._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportSummary>,
      errorMsg: null == errorMsg
          ? _self.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
