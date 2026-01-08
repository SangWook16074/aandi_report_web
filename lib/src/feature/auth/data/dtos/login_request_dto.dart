import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_dto.freezed.dart';
part 'login_request_dto.g.dart';

/// 로그인 요청 정보를 담는 DTO(Data Transfer Object)입니다.
///
/// 서버로 전송되는 JSON 데이터의 구조를 정의합니다.
@freezed
abstract class LoginRequestDto with _$LoginRequestDto {
  const factory LoginRequestDto({
    /// 사용자 아이디
    @Default("") String userId,

    /// 사용자 비밀번호
    @Default("") String password,
  }) = _LoginRequestDto;

  factory LoginRequestDto.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestDtoFromJson(json);
}
