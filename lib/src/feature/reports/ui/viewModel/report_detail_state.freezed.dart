// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportDatailState {
  Report get report;
  String get errorMsg;

  /// Create a copy of ReportDatailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportDatailStateCopyWith<ReportDatailState> get copyWith =>
      _$ReportDatailStateCopyWithImpl<ReportDatailState>(
          this as ReportDatailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportDatailState &&
            (identical(other.report, report) || other.report == report) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report, errorMsg);

  @override
  String toString() {
    return 'ReportDatailState(report: $report, errorMsg: $errorMsg)';
  }
}

/// @nodoc
abstract mixin class $ReportDatailStateCopyWith<$Res> {
  factory $ReportDatailStateCopyWith(
          ReportDatailState value, $Res Function(ReportDatailState) _then) =
      _$ReportDatailStateCopyWithImpl;
  @useResult
  $Res call({Report report, String errorMsg});

  $ReportCopyWith<$Res> get report;
}

/// @nodoc
class _$ReportDatailStateCopyWithImpl<$Res>
    implements $ReportDatailStateCopyWith<$Res> {
  _$ReportDatailStateCopyWithImpl(this._self, this._then);

  final ReportDatailState _self;
  final $Res Function(ReportDatailState) _then;

  /// Create a copy of ReportDatailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? report = null,
    Object? errorMsg = null,
  }) {
    return _then(_self.copyWith(
      report: null == report
          ? _self.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report,
      errorMsg: null == errorMsg
          ? _self.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ReportDatailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportCopyWith<$Res> get report {
    return $ReportCopyWith<$Res>(_self.report, (value) {
      return _then(_self.copyWith(report: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ReportDatailState].
extension ReportDatailStatePatterns on ReportDatailState {
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
    TResult Function(_ReportDatailState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportDatailState() when $default != null:
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
    TResult Function(_ReportDatailState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDatailState():
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
    TResult? Function(_ReportDatailState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDatailState() when $default != null:
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
    TResult Function(Report report, String errorMsg)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportDatailState() when $default != null:
        return $default(_that.report, _that.errorMsg);
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
    TResult Function(Report report, String errorMsg) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDatailState():
        return $default(_that.report, _that.errorMsg);
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
    TResult? Function(Report report, String errorMsg)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportDatailState() when $default != null:
        return $default(_that.report, _that.errorMsg);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ReportDatailState implements ReportDatailState {
  const _ReportDatailState({required this.report, this.errorMsg = ""});

  @override
  final Report report;
  @override
  @JsonKey()
  final String errorMsg;

  /// Create a copy of ReportDatailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportDatailStateCopyWith<_ReportDatailState> get copyWith =>
      __$ReportDatailStateCopyWithImpl<_ReportDatailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportDatailState &&
            (identical(other.report, report) || other.report == report) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report, errorMsg);

  @override
  String toString() {
    return 'ReportDatailState(report: $report, errorMsg: $errorMsg)';
  }
}

/// @nodoc
abstract mixin class _$ReportDatailStateCopyWith<$Res>
    implements $ReportDatailStateCopyWith<$Res> {
  factory _$ReportDatailStateCopyWith(
          _ReportDatailState value, $Res Function(_ReportDatailState) _then) =
      __$ReportDatailStateCopyWithImpl;
  @override
  @useResult
  $Res call({Report report, String errorMsg});

  @override
  $ReportCopyWith<$Res> get report;
}

/// @nodoc
class __$ReportDatailStateCopyWithImpl<$Res>
    implements _$ReportDatailStateCopyWith<$Res> {
  __$ReportDatailStateCopyWithImpl(this._self, this._then);

  final _ReportDatailState _self;
  final $Res Function(_ReportDatailState) _then;

  /// Create a copy of ReportDatailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? report = null,
    Object? errorMsg = null,
  }) {
    return _then(_ReportDatailState(
      report: null == report
          ? _self.report
          : report // ignore: cast_nullable_to_non_nullable
              as Report,
      errorMsg: null == errorMsg
          ? _self.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ReportDatailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportCopyWith<$Res> get report {
    return $ReportCopyWith<$Res>(_self.report, (value) {
      return _then(_self.copyWith(report: value));
    });
  }
}

// dart format on
