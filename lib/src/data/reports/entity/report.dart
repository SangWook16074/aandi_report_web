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
    required String name,

    // 과제 내용
    required String title,
    required String content,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}
