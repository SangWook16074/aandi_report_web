import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_dto.freezed.dart';

@freezed
abstract class LoginRequestDto with _$LoginRequestDto {
  const factory LoginRequestDto({
    @Default("") String account,
    @Default("") String password,
  }) = _LoginRequestDto;
}
