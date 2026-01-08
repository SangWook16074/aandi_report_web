import 'package:a_and_i_report_web_server/src/feature/home/data/entities/level.dart';
import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

/// 과제 상세 정보(Entity)입니다.
@freezed
sealed class Report with _$Report {
  factory Report({
    /// 과제 고유 ID (UUID)
    required String id,

    /// 과제 제목
    required String title,

    /// 과제 본문 내용
    required String content,

    /// 과제 요구 사항 목록
    required List<SeqString> requirement,

    /// 과제 학습 목표 목록
    required List<SeqString> objects,

    /// 예제 입출력 케이스 목록
    required List<ExampleIO> exampleIo,

    /// 과제 유형 (CS, Algorithm 등)
    required ReportType reportType,

    /// 과제 주차
    required int week,

    /// 과제 난이도
    required Level level,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

/// 순서가 있는 텍스트 정보를 담는 클래스입니다. (예: 요구사항, 학습 목표)
@freezed
sealed class SeqString with _$SeqString {
  factory SeqString({
    /// 표시 순서
    required int seq,

    /// 텍스트 내용
    required String content,
  }) = _SeqString;

  factory SeqString.fromJson(Map<String, dynamic> json) =>
      _$SeqStringFromJson(json);
}

/// 예제 입력/출력 데이터를 담는 클래스입니다.
@freezed
sealed class ExampleIO with _$ExampleIO {
  factory ExampleIO({
    /// 표시 순서
    required int seq,

    /// 입력 예시
    required String input,

    /// 출력 예시
    required String output,
  }) = _ExampleIO;

  factory ExampleIO.fromJson(Map<String, dynamic> json) =>
      _$ExampleIOFromJson(json);
}
