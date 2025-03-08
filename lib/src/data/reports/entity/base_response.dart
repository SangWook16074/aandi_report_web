import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

/// API 기본응답 엔티티
///
/// data는 JSON 배열 혹은 JSON이 반환됩니다.
@Freezed(genericArgumentFactories: true)
sealed class BaseResponse<T> with _$BaseResponse<T> {
  factory BaseResponse({
    required String status,
    required T data,
    required String resultMsg,
  }) = _BaseResponseData<T>;

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$BaseResponseFromJson(json, fromJsonT);
}
