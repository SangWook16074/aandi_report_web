// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Report _$ReportFromJson(Map<String, dynamic> json) => _Report(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      requirement: (json['requirement'] as List<dynamic>)
          .map((e) => SeqString.fromJson(e as Map<String, dynamic>))
          .toList(),
      objects: (json['objects'] as List<dynamic>)
          .map((e) => SeqString.fromJson(e as Map<String, dynamic>))
          .toList(),
      exampleIo: (json['exampleIo'] as List<dynamic>)
          .map((e) => ExampleIO.fromJson(e as Map<String, dynamic>))
          .toList(),
      reportType: $enumDecode(_$ReportTypeEnumMap, json['reportType']),
      week: (json['week'] as num).toInt(),
      level: $enumDecode(_$LevelEnumMap, json['level']),
    );

Map<String, dynamic> _$ReportToJson(_Report instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'requirement': instance.requirement,
      'objects': instance.objects,
      'exampleIo': instance.exampleIo,
      'reportType': _$ReportTypeEnumMap[instance.reportType]!,
      'week': instance.week,
      'level': _$LevelEnumMap[instance.level]!,
    };

const _$ReportTypeEnumMap = {
  ReportType.CS: 'CS',
  ReportType.BASIC: 'BASIC',
};

const _$LevelEnumMap = {
  Level.VERYHIGH: 'VERYHIGH',
  Level.HIGH: 'HIGH',
  Level.MEDIUM: 'MEDIUM',
  Level.LOW: 'LOW',
};

_SeqString _$SeqStringFromJson(Map<String, dynamic> json) => _SeqString(
      seq: (json['seq'] as num).toInt(),
      content: json['content'] as String,
    );

Map<String, dynamic> _$SeqStringToJson(_SeqString instance) =>
    <String, dynamic>{
      'seq': instance.seq,
      'content': instance.content,
    };

_ExampleIO _$ExampleIOFromJson(Map<String, dynamic> json) => _ExampleIO(
      seq: (json['seq'] as num).toInt(),
      input: json['input'] as String,
      output: json['output'] as String,
    );

Map<String, dynamic> _$ExampleIOToJson(_ExampleIO instance) =>
    <String, dynamic>{
      'seq': instance.seq,
      'input': instance.input,
      'output': instance.output,
    };
