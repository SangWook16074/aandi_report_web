// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportImpl _$$ReportImplFromJson(Map<String, dynamic> json) => _$ReportImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      requirement: (json['requirement'] as List<dynamic>)
          .map((e) => SeqString.fromJson(e as Map<String, dynamic>))
          .toList(),
      objects: (json['objects'] as List<dynamic>)
          .map((e) => SeqString.fromJson(e as Map<String, dynamic>))
          .toList(),
      exampleIO: (json['exampleIO'] as List<dynamic>)
          .map((e) => ExampleIO.fromJson(e as Map<String, dynamic>))
          .toList(),
      reportType: $enumDecode(_$ReportTypeEnumMap, json['reportType']),
      week: (json['week'] as num).toInt(),
    );

Map<String, dynamic> _$$ReportImplToJson(_$ReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'requirement': instance.requirement,
      'objects': instance.objects,
      'exampleIO': instance.exampleIO,
      'reportType': _$ReportTypeEnumMap[instance.reportType]!,
      'week': instance.week,
    };

const _$ReportTypeEnumMap = {
  ReportType.CS: 'CS',
  ReportType.BASIC: 'BASIC',
};

_$SeqStringImpl _$$SeqStringImplFromJson(Map<String, dynamic> json) =>
    _$SeqStringImpl(
      seq: (json['seq'] as num).toInt(),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$SeqStringImplToJson(_$SeqStringImpl instance) =>
    <String, dynamic>{
      'seq': instance.seq,
      'content': instance.content,
    };

_$ExampleIOImpl _$$ExampleIOImplFromJson(Map<String, dynamic> json) =>
    _$ExampleIOImpl(
      seq: (json['seq'] as num).toInt(),
      input: json['input'] as String,
      output: json['output'] as String,
    );

Map<String, dynamic> _$$ExampleIOImplToJson(_$ExampleIOImpl instance) =>
    <String, dynamic>{
      'seq': instance.seq,
      'input': instance.input,
      'output': instance.output,
    };
