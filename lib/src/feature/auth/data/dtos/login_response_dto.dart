import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_dto.freezed.dart';
part 'login_response_dto.g.dart';

/// 로그인 성공 시 서버로부터 반환되는 응답 DTO입니다.
@freezed
abstract class LoginResponseDto with _$LoginResponseDto {
  const factory LoginResponseDto({
    /// 인증에 성공하여 발급된 액세스 토큰 (JWT 등)
    required String accessToken,
  }) = _LoginResponseDto;

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);
}
