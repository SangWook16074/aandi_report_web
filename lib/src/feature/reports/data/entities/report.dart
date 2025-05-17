import 'package:a_and_i_report_web_server/src/feature/home/data/entities/level.dart';
import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

/// 과제 엔티티
///
@freezed
sealed class Report with _$Report {
  factory Report({
    // 과제 UUID
    required String id,

    // 과제 제목
    required String title,

    // 과제 내용
    required String content,

    // 과제 요구 사항
    required List<SeqString> requirement,

    // 과제 목표
    required List<SeqString> objects,

    // 예제 입출력
    required List<ExampleIO> exampleIo,

    // 과제 분류
    required ReportType reportType,

    // 과제 주차
    required int week,

    // 과제 난이도
    required Level level,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

@freezed
sealed class SeqString with _$SeqString {
  factory SeqString({
    required int seq,
    required String content,
  }) = _SeqString;

  factory SeqString.fromJson(Map<String, dynamic> json) =>
      _$SeqStringFromJson(json);
}

@freezed
sealed class ExampleIO with _$ExampleIO {
  factory ExampleIO({
    required int seq,
    required String input,
    required String output,
  }) = _ExampleIO;

  factory ExampleIO.fromJson(Map<String, dynamic> json) =>
      _$ExampleIOFromJson(json);
}
