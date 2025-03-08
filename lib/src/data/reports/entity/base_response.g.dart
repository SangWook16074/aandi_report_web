// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseDataImpl<T> _$$BaseResponseDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BaseResponseDataImpl<T>(
      status: json['status'] as String,
      data: fromJsonT(json['data']),
      resultMsg: json['resultMsg'] as String,
    );

Map<String, dynamic> _$$BaseResponseDataImplToJson<T>(
  _$BaseResponseDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'data': toJsonT(instance.data),
      'resultMsg': instance.resultMsg,
    };
