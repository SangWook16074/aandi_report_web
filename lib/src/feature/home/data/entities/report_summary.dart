import 'package:a_and_i_report_web_server/src/feature/home/data/entities/level.dart';
import 'package:a_and_i_report_web_server/src/feature/home/data/entities/report_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_summary.freezed.dart';
part 'report_summary.g.dart';

/// 과제 목록에 표시될 요약 정보(Entity)입니다.
@freezed
sealed class ReportSummary with _$ReportSummary {
  factory ReportSummary({
    /// 과제 ID (UUID)
    required String id,

    /// 주차 (예: 1주차, 2주차)
    required int week,

    /// 정렬 순서
    required int seq,

    /// 과제 제목
    required String title,

    /// 난이도 (Basic, Advanced 등)
    required Level level,

    /// 과제 유형 (CS, Algorithm 등)
    required ReportType reportType,

    /// 제출 마감일
    required DateTime endAt,
  }) = _ReportSummary;

  factory ReportSummary.fromJson(Map<String, dynamic> json) =>
      _$ReportSummaryFromJson(json);
}
