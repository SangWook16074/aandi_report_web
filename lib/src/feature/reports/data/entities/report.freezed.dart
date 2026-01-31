// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Report {
  /// 과제 고유 ID (UUID)
  String get id;

  /// 과제 제목
  String get title;

  /// 과제 본문 내용
  String get content;

  /// 과제 요구 사항 목록
  List<SeqString> get requirement;

  /// 과제 학습 목표 목록
  List<SeqString> get objects;

  /// 예제 입출력 케이스 목록
  List<ExampleIO> get exampleIo;

  /// 과제 유형 (CS, Algorithm 등)
  ReportType get reportType;

  /// 과제 주차
  int get week;

  /// 과제 난이도
  Level get level;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportCopyWith<Report> get copyWith =>
      _$ReportCopyWithImpl<Report>(this as Report, _$identity);

  /// Serializes this Report to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Report &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other.requirement, requirement) &&
            const DeepCollectionEquality().equals(other.objects, objects) &&
            const DeepCollectionEquality().equals(other.exampleIo, exampleIo) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      const DeepCollectionEquality().hash(requirement),
      const DeepCollectionEquality().hash(objects),
      const DeepCollectionEquality().hash(exampleIo),
      reportType,
      week,
      level);

  @override
  String toString() {
    return 'Report(id: $id, title: $title, content: $content, requirement: $requirement, objects: $objects, exampleIo: $exampleIo, reportType: $reportType, week: $week, level: $level)';
  }
}

/// @nodoc
abstract mixin class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) _then) =
      _$ReportCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      List<SeqString> requirement,
      List<SeqString> objects,
      List<ExampleIO> exampleIo,
      ReportType reportType,
      int week,
      Level level});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res> implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._self, this._then);

  final Report _self;
  final $Res Function(Report) _then;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? requirement = null,
    Object? objects = null,
    Object? exampleIo = null,
    Object? reportType = null,
    Object? week = null,
    Object? level = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      requirement: null == requirement
          ? _self.requirement
          : requirement // ignore: cast_nullable_to_non_nullable
              as List<SeqString>,
      objects: null == objects
          ? _self.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<SeqString>,
      exampleIo: null == exampleIo
          ? _self.exampleIo
          : exampleIo // ignore: cast_nullable_to_non_nullable
              as List<ExampleIO>,
      reportType: null == reportType
          ? _self.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType,
      week: null == week
          ? _self.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
    ));
  }
}

/// Adds pattern-matching-related methods to [Report].
extension ReportPatterns on Report {
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
    TResult Function(_Report value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Report() when $default != null:
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
    TResult Function(_Report value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Report():
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
    TResult? Function(_Report value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Report() when $default != null:
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
    TResult Function(
            String id,
            String title,
            String content,
            List<SeqString> requirement,
            List<SeqString> objects,
            List<ExampleIO> exampleIo,
            ReportType reportType,
            int week,
            Level level)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Report() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.content,
            _that.requirement,
            _that.objects,
            _that.exampleIo,
            _that.reportType,
            _that.week,
            _that.level);
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
    TResult Function(
            String id,
            String title,
            String content,
            List<SeqString> requirement,
            List<SeqString> objects,
            List<ExampleIO> exampleIo,
            ReportType reportType,
            int week,
            Level level)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Report():
        return $default(
            _that.id,
            _that.title,
            _that.content,
            _that.requirement,
            _that.objects,
            _that.exampleIo,
            _that.reportType,
            _that.week,
            _that.level);
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
    TResult? Function(
            String id,
            String title,
            String content,
            List<SeqString> requirement,
            List<SeqString> objects,
            List<ExampleIO> exampleIo,
            ReportType reportType,
            int week,
            Level level)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Report() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.content,
            _that.requirement,
            _that.objects,
            _that.exampleIo,
            _that.reportType,
            _that.week,
            _that.level);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Report implements Report {
  _Report(
      {required this.id,
      required this.title,
      required this.content,
      required final List<SeqString> requirement,
      required final List<SeqString> objects,
      required final List<ExampleIO> exampleIo,
      required this.reportType,
      required this.week,
      required this.level})
      : _requirement = requirement,
        _objects = objects,
        _exampleIo = exampleIo;
  factory _Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);

  /// 과제 고유 ID (UUID)
  @override
  final String id;

  /// 과제 제목
  @override
  final String title;

  /// 과제 본문 내용
  @override
  final String content;

  /// 과제 요구 사항 목록
  final List<SeqString> _requirement;

  /// 과제 요구 사항 목록
  @override
  List<SeqString> get requirement {
    if (_requirement is EqualUnmodifiableListView) return _requirement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requirement);
  }

  /// 과제 학습 목표 목록
  final List<SeqString> _objects;

  /// 과제 학습 목표 목록
  @override
  List<SeqString> get objects {
    if (_objects is EqualUnmodifiableListView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_objects);
  }

  /// 예제 입출력 케이스 목록
  final List<ExampleIO> _exampleIo;

  /// 예제 입출력 케이스 목록
  @override
  List<ExampleIO> get exampleIo {
    if (_exampleIo is EqualUnmodifiableListView) return _exampleIo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exampleIo);
  }

  /// 과제 유형 (CS, Algorithm 등)
  @override
  final ReportType reportType;

  /// 과제 주차
  @override
  final int week;

  /// 과제 난이도
  @override
  final Level level;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportCopyWith<_Report> get copyWith =>
      __$ReportCopyWithImpl<_Report>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReportToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Report &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._requirement, _requirement) &&
            const DeepCollectionEquality().equals(other._objects, _objects) &&
            const DeepCollectionEquality()
                .equals(other._exampleIo, _exampleIo) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      const DeepCollectionEquality().hash(_requirement),
      const DeepCollectionEquality().hash(_objects),
      const DeepCollectionEquality().hash(_exampleIo),
      reportType,
      week,
      level);

  @override
  String toString() {
    return 'Report(id: $id, title: $title, content: $content, requirement: $requirement, objects: $objects, exampleIo: $exampleIo, reportType: $reportType, week: $week, level: $level)';
  }
}

/// @nodoc
abstract mixin class _$ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) _then) =
      __$ReportCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      List<SeqString> requirement,
      List<SeqString> objects,
      List<ExampleIO> exampleIo,
      ReportType reportType,
      int week,
      Level level});
}

/// @nodoc
class __$ReportCopyWithImpl<$Res> implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(this._self, this._then);

  final _Report _self;
  final $Res Function(_Report) _then;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? requirement = null,
    Object? objects = null,
    Object? exampleIo = null,
    Object? reportType = null,
    Object? week = null,
    Object? level = null,
  }) {
    return _then(_Report(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      requirement: null == requirement
          ? _self._requirement
          : requirement // ignore: cast_nullable_to_non_nullable
              as List<SeqString>,
      objects: null == objects
          ? _self._objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<SeqString>,
      exampleIo: null == exampleIo
          ? _self._exampleIo
          : exampleIo // ignore: cast_nullable_to_non_nullable
              as List<ExampleIO>,
      reportType: null == reportType
          ? _self.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType,
      week: null == week
          ? _self.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
    ));
  }
}

/// @nodoc
mixin _$SeqString {
  /// 표시 순서
  int get seq;

  /// 텍스트 내용
  String get content;

  /// Create a copy of SeqString
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SeqStringCopyWith<SeqString> get copyWith =>
      _$SeqStringCopyWithImpl<SeqString>(this as SeqString, _$identity);

  /// Serializes this SeqString to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SeqString &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seq, content);

  @override
  String toString() {
    return 'SeqString(seq: $seq, content: $content)';
  }
}

/// @nodoc
abstract mixin class $SeqStringCopyWith<$Res> {
  factory $SeqStringCopyWith(SeqString value, $Res Function(SeqString) _then) =
      _$SeqStringCopyWithImpl;
  @useResult
  $Res call({int seq, String content});
}

/// @nodoc
class _$SeqStringCopyWithImpl<$Res> implements $SeqStringCopyWith<$Res> {
  _$SeqStringCopyWithImpl(this._self, this._then);

  final SeqString _self;
  final $Res Function(SeqString) _then;

  /// Create a copy of SeqString
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? content = null,
  }) {
    return _then(_self.copyWith(
      seq: null == seq
          ? _self.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SeqString].
extension SeqStringPatterns on SeqString {
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
    TResult Function(_SeqString value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SeqString() when $default != null:
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
    TResult Function(_SeqString value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SeqString():
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
    TResult? Function(_SeqString value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SeqString() when $default != null:
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
    TResult Function(int seq, String content)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SeqString() when $default != null:
        return $default(_that.seq, _that.content);
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
    TResult Function(int seq, String content) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SeqString():
        return $default(_that.seq, _that.content);
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
    TResult? Function(int seq, String content)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SeqString() when $default != null:
        return $default(_that.seq, _that.content);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SeqString implements SeqString {
  _SeqString({required this.seq, required this.content});
  factory _SeqString.fromJson(Map<String, dynamic> json) =>
      _$SeqStringFromJson(json);

  /// 표시 순서
  @override
  final int seq;

  /// 텍스트 내용
  @override
  final String content;

  /// Create a copy of SeqString
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SeqStringCopyWith<_SeqString> get copyWith =>
      __$SeqStringCopyWithImpl<_SeqString>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SeqStringToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SeqString &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seq, content);

  @override
  String toString() {
    return 'SeqString(seq: $seq, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$SeqStringCopyWith<$Res>
    implements $SeqStringCopyWith<$Res> {
  factory _$SeqStringCopyWith(
          _SeqString value, $Res Function(_SeqString) _then) =
      __$SeqStringCopyWithImpl;
  @override
  @useResult
  $Res call({int seq, String content});
}

/// @nodoc
class __$SeqStringCopyWithImpl<$Res> implements _$SeqStringCopyWith<$Res> {
  __$SeqStringCopyWithImpl(this._self, this._then);

  final _SeqString _self;
  final $Res Function(_SeqString) _then;

  /// Create a copy of SeqString
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? seq = null,
    Object? content = null,
  }) {
    return _then(_SeqString(
      seq: null == seq
          ? _self.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ExampleIO {
  /// 표시 순서
  int get seq;

  /// 입력 예시
  String get input;

  /// 출력 예시
  String get output;

  /// Create a copy of ExampleIO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExampleIOCopyWith<ExampleIO> get copyWith =>
      _$ExampleIOCopyWithImpl<ExampleIO>(this as ExampleIO, _$identity);

  /// Serializes this ExampleIO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExampleIO &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.output, output) || other.output == output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seq, input, output);

  @override
  String toString() {
    return 'ExampleIO(seq: $seq, input: $input, output: $output)';
  }
}

/// @nodoc
abstract mixin class $ExampleIOCopyWith<$Res> {
  factory $ExampleIOCopyWith(ExampleIO value, $Res Function(ExampleIO) _then) =
      _$ExampleIOCopyWithImpl;
  @useResult
  $Res call({int seq, String input, String output});
}

/// @nodoc
class _$ExampleIOCopyWithImpl<$Res> implements $ExampleIOCopyWith<$Res> {
  _$ExampleIOCopyWithImpl(this._self, this._then);

  final ExampleIO _self;
  final $Res Function(ExampleIO) _then;

  /// Create a copy of ExampleIO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? input = null,
    Object? output = null,
  }) {
    return _then(_self.copyWith(
      seq: null == seq
          ? _self.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      input: null == input
          ? _self.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _self.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExampleIO].
extension ExampleIOPatterns on ExampleIO {
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
    TResult Function(_ExampleIO value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExampleIO() when $default != null:
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
    TResult Function(_ExampleIO value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExampleIO():
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
    TResult? Function(_ExampleIO value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExampleIO() when $default != null:
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
    TResult Function(int seq, String input, String output)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExampleIO() when $default != null:
        return $default(_that.seq, _that.input, _that.output);
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
    TResult Function(int seq, String input, String output) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExampleIO():
        return $default(_that.seq, _that.input, _that.output);
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
    TResult? Function(int seq, String input, String output)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExampleIO() when $default != null:
        return $default(_that.seq, _that.input, _that.output);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExampleIO implements ExampleIO {
  _ExampleIO({required this.seq, required this.input, required this.output});
  factory _ExampleIO.fromJson(Map<String, dynamic> json) =>
      _$ExampleIOFromJson(json);

  /// 표시 순서
  @override
  final int seq;

  /// 입력 예시
  @override
  final String input;

  /// 출력 예시
  @override
  final String output;

  /// Create a copy of ExampleIO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExampleIOCopyWith<_ExampleIO> get copyWith =>
      __$ExampleIOCopyWithImpl<_ExampleIO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExampleIOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExampleIO &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.output, output) || other.output == output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seq, input, output);

  @override
  String toString() {
    return 'ExampleIO(seq: $seq, input: $input, output: $output)';
  }
}

/// @nodoc
abstract mixin class _$ExampleIOCopyWith<$Res>
    implements $ExampleIOCopyWith<$Res> {
  factory _$ExampleIOCopyWith(
          _ExampleIO value, $Res Function(_ExampleIO) _then) =
      __$ExampleIOCopyWithImpl;
  @override
  @useResult
  $Res call({int seq, String input, String output});
}

/// @nodoc
class __$ExampleIOCopyWithImpl<$Res> implements _$ExampleIOCopyWith<$Res> {
  __$ExampleIOCopyWithImpl(this._self, this._then);

  final _ExampleIO _self;
  final $Res Function(_ExampleIO) _then;

  /// Create a copy of ExampleIO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? seq = null,
    Object? input = null,
    Object? output = null,
  }) {
    return _then(_ExampleIO(
      seq: null == seq
          ? _self.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      input: null == input
          ? _self.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _self.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
