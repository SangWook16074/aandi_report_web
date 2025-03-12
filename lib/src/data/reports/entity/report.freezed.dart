// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
// 과제 UUID
  String get id => throw _privateConstructorUsedError; // 과제 제목
  String get title => throw _privateConstructorUsedError; // 과제 내용
  String get content => throw _privateConstructorUsedError; // 과제 요구 사항
  List<SeqString> get requirement =>
      throw _privateConstructorUsedError; // 과제 목표
  List<SeqString> get objects => throw _privateConstructorUsedError; // 예제 입출력
  List<ExampleIO> get exampleIO => throw _privateConstructorUsedError; // 과제 분류
  ReportType get reportType => throw _privateConstructorUsedError; // 과제 주차
  int get week => throw _privateConstructorUsedError;

  /// Serializes this Report to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      List<SeqString> requirement,
      List<SeqString> objects,
      List<ExampleIO> exampleIO,
      ReportType reportType,
      int week});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    Object? exampleIO = null,
    Object? reportType = null,
    Object? week = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      requirement: null == requirement
          ? _value.requirement
          : requirement // ignore: cast_nullable_to_non_nullable
              as List<SeqString>,
      objects: null == objects
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<SeqString>,
      exampleIO: null == exampleIO
          ? _value.exampleIO
          : exampleIO // ignore: cast_nullable_to_non_nullable
              as List<ExampleIO>,
      reportType: null == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportImplCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$ReportImplCopyWith(
          _$ReportImpl value, $Res Function(_$ReportImpl) then) =
      __$$ReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      List<SeqString> requirement,
      List<SeqString> objects,
      List<ExampleIO> exampleIO,
      ReportType reportType,
      int week});
}

/// @nodoc
class __$$ReportImplCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$ReportImpl>
    implements _$$ReportImplCopyWith<$Res> {
  __$$ReportImplCopyWithImpl(
      _$ReportImpl _value, $Res Function(_$ReportImpl) _then)
      : super(_value, _then);

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
    Object? exampleIO = null,
    Object? reportType = null,
    Object? week = null,
  }) {
    return _then(_$ReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      requirement: null == requirement
          ? _value._requirement
          : requirement // ignore: cast_nullable_to_non_nullable
              as List<SeqString>,
      objects: null == objects
          ? _value._objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<SeqString>,
      exampleIO: null == exampleIO
          ? _value._exampleIO
          : exampleIO // ignore: cast_nullable_to_non_nullable
              as List<ExampleIO>,
      reportType: null == reportType
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportImpl implements _Report {
  _$ReportImpl(
      {required this.id,
      required this.title,
      required this.content,
      required final List<SeqString> requirement,
      required final List<SeqString> objects,
      required final List<ExampleIO> exampleIO,
      required this.reportType,
      required this.week})
      : _requirement = requirement,
        _objects = objects,
        _exampleIO = exampleIO;

  factory _$ReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportImplFromJson(json);

// 과제 UUID
  @override
  final String id;
// 과제 제목
  @override
  final String title;
// 과제 내용
  @override
  final String content;
// 과제 요구 사항
  final List<SeqString> _requirement;
// 과제 요구 사항
  @override
  List<SeqString> get requirement {
    if (_requirement is EqualUnmodifiableListView) return _requirement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requirement);
  }

// 과제 목표
  final List<SeqString> _objects;
// 과제 목표
  @override
  List<SeqString> get objects {
    if (_objects is EqualUnmodifiableListView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_objects);
  }

// 예제 입출력
  final List<ExampleIO> _exampleIO;
// 예제 입출력
  @override
  List<ExampleIO> get exampleIO {
    if (_exampleIO is EqualUnmodifiableListView) return _exampleIO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exampleIO);
  }

// 과제 분류
  @override
  final ReportType reportType;
// 과제 주차
  @override
  final int week;

  @override
  String toString() {
    return 'Report(id: $id, title: $title, content: $content, requirement: $requirement, objects: $objects, exampleIO: $exampleIO, reportType: $reportType, week: $week)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._requirement, _requirement) &&
            const DeepCollectionEquality().equals(other._objects, _objects) &&
            const DeepCollectionEquality()
                .equals(other._exampleIO, _exampleIO) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.week, week) || other.week == week));
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
      const DeepCollectionEquality().hash(_exampleIO),
      reportType,
      week);

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      __$$ReportImplCopyWithImpl<_$ReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportImplToJson(
      this,
    );
  }
}

abstract class _Report implements Report {
  factory _Report(
      {required final String id,
      required final String title,
      required final String content,
      required final List<SeqString> requirement,
      required final List<SeqString> objects,
      required final List<ExampleIO> exampleIO,
      required final ReportType reportType,
      required final int week}) = _$ReportImpl;

  factory _Report.fromJson(Map<String, dynamic> json) = _$ReportImpl.fromJson;

// 과제 UUID
  @override
  String get id; // 과제 제목
  @override
  String get title; // 과제 내용
  @override
  String get content; // 과제 요구 사항
  @override
  List<SeqString> get requirement; // 과제 목표
  @override
  List<SeqString> get objects; // 예제 입출력
  @override
  List<ExampleIO> get exampleIO; // 과제 분류
  @override
  ReportType get reportType; // 과제 주차
  @override
  int get week;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeqString _$SeqStringFromJson(Map<String, dynamic> json) {
  return _SeqString.fromJson(json);
}

/// @nodoc
mixin _$SeqString {
  int get seq => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this SeqString to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeqString
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeqStringCopyWith<SeqString> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeqStringCopyWith<$Res> {
  factory $SeqStringCopyWith(SeqString value, $Res Function(SeqString) then) =
      _$SeqStringCopyWithImpl<$Res, SeqString>;
  @useResult
  $Res call({int seq, String content});
}

/// @nodoc
class _$SeqStringCopyWithImpl<$Res, $Val extends SeqString>
    implements $SeqStringCopyWith<$Res> {
  _$SeqStringCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeqString
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeqStringImplCopyWith<$Res>
    implements $SeqStringCopyWith<$Res> {
  factory _$$SeqStringImplCopyWith(
          _$SeqStringImpl value, $Res Function(_$SeqStringImpl) then) =
      __$$SeqStringImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seq, String content});
}

/// @nodoc
class __$$SeqStringImplCopyWithImpl<$Res>
    extends _$SeqStringCopyWithImpl<$Res, _$SeqStringImpl>
    implements _$$SeqStringImplCopyWith<$Res> {
  __$$SeqStringImplCopyWithImpl(
      _$SeqStringImpl _value, $Res Function(_$SeqStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeqString
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? content = null,
  }) {
    return _then(_$SeqStringImpl(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeqStringImpl implements _SeqString {
  _$SeqStringImpl({required this.seq, required this.content});

  factory _$SeqStringImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeqStringImplFromJson(json);

  @override
  final int seq;
  @override
  final String content;

  @override
  String toString() {
    return 'SeqString(seq: $seq, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeqStringImpl &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seq, content);

  /// Create a copy of SeqString
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeqStringImplCopyWith<_$SeqStringImpl> get copyWith =>
      __$$SeqStringImplCopyWithImpl<_$SeqStringImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeqStringImplToJson(
      this,
    );
  }
}

abstract class _SeqString implements SeqString {
  factory _SeqString({required final int seq, required final String content}) =
      _$SeqStringImpl;

  factory _SeqString.fromJson(Map<String, dynamic> json) =
      _$SeqStringImpl.fromJson;

  @override
  int get seq;
  @override
  String get content;

  /// Create a copy of SeqString
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeqStringImplCopyWith<_$SeqStringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExampleIO _$ExampleIOFromJson(Map<String, dynamic> json) {
  return _ExampleIO.fromJson(json);
}

/// @nodoc
mixin _$ExampleIO {
  int get seq => throw _privateConstructorUsedError;
  String get input => throw _privateConstructorUsedError;
  String get output => throw _privateConstructorUsedError;

  /// Serializes this ExampleIO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExampleIO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExampleIOCopyWith<ExampleIO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleIOCopyWith<$Res> {
  factory $ExampleIOCopyWith(ExampleIO value, $Res Function(ExampleIO) then) =
      _$ExampleIOCopyWithImpl<$Res, ExampleIO>;
  @useResult
  $Res call({int seq, String input, String output});
}

/// @nodoc
class _$ExampleIOCopyWithImpl<$Res, $Val extends ExampleIO>
    implements $ExampleIOCopyWith<$Res> {
  _$ExampleIOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExampleIO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? input = null,
    Object? output = null,
  }) {
    return _then(_value.copyWith(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExampleIOImplCopyWith<$Res>
    implements $ExampleIOCopyWith<$Res> {
  factory _$$ExampleIOImplCopyWith(
          _$ExampleIOImpl value, $Res Function(_$ExampleIOImpl) then) =
      __$$ExampleIOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seq, String input, String output});
}

/// @nodoc
class __$$ExampleIOImplCopyWithImpl<$Res>
    extends _$ExampleIOCopyWithImpl<$Res, _$ExampleIOImpl>
    implements _$$ExampleIOImplCopyWith<$Res> {
  __$$ExampleIOImplCopyWithImpl(
      _$ExampleIOImpl _value, $Res Function(_$ExampleIOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExampleIO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seq = null,
    Object? input = null,
    Object? output = null,
  }) {
    return _then(_$ExampleIOImpl(
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExampleIOImpl implements _ExampleIO {
  _$ExampleIOImpl(
      {required this.seq, required this.input, required this.output});

  factory _$ExampleIOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExampleIOImplFromJson(json);

  @override
  final int seq;
  @override
  final String input;
  @override
  final String output;

  @override
  String toString() {
    return 'ExampleIO(seq: $seq, input: $input, output: $output)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExampleIOImpl &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.output, output) || other.output == output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seq, input, output);

  /// Create a copy of ExampleIO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExampleIOImplCopyWith<_$ExampleIOImpl> get copyWith =>
      __$$ExampleIOImplCopyWithImpl<_$ExampleIOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExampleIOImplToJson(
      this,
    );
  }
}

abstract class _ExampleIO implements ExampleIO {
  factory _ExampleIO(
      {required final int seq,
      required final String input,
      required final String output}) = _$ExampleIOImpl;

  factory _ExampleIO.fromJson(Map<String, dynamic> json) =
      _$ExampleIOImpl.fromJson;

  @override
  int get seq;
  @override
  String get input;
  @override
  String get output;

  /// Create a copy of ExampleIO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExampleIOImplCopyWith<_$ExampleIOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
