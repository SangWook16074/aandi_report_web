// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportSummary {
  String get id;
  int get week;
  int get seq;
  String get title;
  Level get level;
  ReportType get reportType;
  DateTime get endAt;

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportSummaryCopyWith<ReportSummary> get copyWith =>
      _$ReportSummaryCopyWithImpl<ReportSummary>(
          this as ReportSummary, _$identity);

  /// Serializes this ReportSummary to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportSummary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, week, seq, title, level, reportType, endAt);

  @override
  String toString() {
    return 'ReportSummary(id: $id, week: $week, seq: $seq, title: $title, level: $level, reportType: $reportType, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class $ReportSummaryCopyWith<$Res> {
  factory $ReportSummaryCopyWith(
          ReportSummary value, $Res Function(ReportSummary) _then) =
      _$ReportSummaryCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      int week,
      int seq,
      String title,
      Level level,
      ReportType reportType,
      DateTime endAt});
}

/// @nodoc
class _$ReportSummaryCopyWithImpl<$Res>
    implements $ReportSummaryCopyWith<$Res> {
  _$ReportSummaryCopyWithImpl(this._self, this._then);

  final ReportSummary _self;
  final $Res Function(ReportSummary) _then;

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? week = null,
    Object? seq = null,
    Object? title = null,
    Object? level = null,
    Object? reportType = null,
    Object? endAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      week: null == week
          ? _self.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      seq: null == seq
          ? _self.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      reportType: null == reportType
          ? _self.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReportSummary].
extension ReportSummaryPatterns on ReportSummary {
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
    TResult Function(_ReportSummary value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportSummary() when $default != null:
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
    TResult Function(_ReportSummary value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportSummary():
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
    TResult? Function(_ReportSummary value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportSummary() when $default != null:
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
    TResult Function(String id, int week, int seq, String title, Level level,
            ReportType reportType, DateTime endAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportSummary() when $default != null:
        return $default(_that.id, _that.week, _that.seq, _that.title,
            _that.level, _that.reportType, _that.endAt);
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
    TResult Function(String id, int week, int seq, String title, Level level,
            ReportType reportType, DateTime endAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportSummary():
        return $default(_that.id, _that.week, _that.seq, _that.title,
            _that.level, _that.reportType, _that.endAt);
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
    TResult? Function(String id, int week, int seq, String title, Level level,
            ReportType reportType, DateTime endAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportSummary() when $default != null:
        return $default(_that.id, _that.week, _that.seq, _that.title,
            _that.level, _that.reportType, _that.endAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReportSummary implements ReportSummary {
  _ReportSummary(
      {required this.id,
      required this.week,
      required this.seq,
      required this.title,
      required this.level,
      required this.reportType,
      required this.endAt});
  factory _ReportSummary.fromJson(Map<String, dynamic> json) =>
      _$ReportSummaryFromJson(json);

  @override
  final String id;
  @override
  final int week;
  @override
  final int seq;
  @override
  final String title;
  @override
  final Level level;
  @override
  final ReportType reportType;
  @override
  final DateTime endAt;

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportSummaryCopyWith<_ReportSummary> get copyWith =>
      __$ReportSummaryCopyWithImpl<_ReportSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReportSummaryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportSummary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, week, seq, title, level, reportType, endAt);

  @override
  String toString() {
    return 'ReportSummary(id: $id, week: $week, seq: $seq, title: $title, level: $level, reportType: $reportType, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class _$ReportSummaryCopyWith<$Res>
    implements $ReportSummaryCopyWith<$Res> {
  factory _$ReportSummaryCopyWith(
          _ReportSummary value, $Res Function(_ReportSummary) _then) =
      __$ReportSummaryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      int week,
      int seq,
      String title,
      Level level,
      ReportType reportType,
      DateTime endAt});
}

/// @nodoc
class __$ReportSummaryCopyWithImpl<$Res>
    implements _$ReportSummaryCopyWith<$Res> {
  __$ReportSummaryCopyWithImpl(this._self, this._then);

  final _ReportSummary _self;
  final $Res Function(_ReportSummary) _then;

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? week = null,
    Object? seq = null,
    Object? title = null,
    Object? level = null,
    Object? reportType = null,
    Object? endAt = null,
  }) {
    return _then(_ReportSummary(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      week: null == week
          ? _self.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      seq: null == seq
          ? _self.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      reportType: null == reportType
          ? _self.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
