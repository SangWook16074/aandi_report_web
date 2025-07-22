// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportSummary _$ReportSummaryFromJson(Map<String, dynamic> json) =>
    _ReportSummary(
      id: json['id'] as String,
      week: (json['week'] as num).toInt(),
      seq: (json['seq'] as num).toInt(),
      title: json['title'] as String,
      level: $enumDecode(_$LevelEnumMap, json['level']),
      reportType: $enumDecode(_$ReportTypeEnumMap, json['reportType']),
      endAt: DateTime.parse(json['endAt'] as String),
    );

Map<String, dynamic> _$ReportSummaryToJson(_ReportSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'week': instance.week,
      'seq': instance.seq,
      'title': instance.title,
      'level': _$LevelEnumMap[instance.level]!,
      'reportType': _$ReportTypeEnumMap[instance.reportType]!,
      'endAt': instance.endAt.toIso8601String(),
    };

const _$LevelEnumMap = {
  Level.VERYHIGH: 'VERYHIGH',
  Level.HIGH: 'HIGH',
  Level.MEDIUM: 'MEDIUM',
  Level.LOW: 'LOW',
};

const _$ReportTypeEnumMap = {
  ReportType.CS: 'CS',
  ReportType.BASIC: 'BASIC',
};
