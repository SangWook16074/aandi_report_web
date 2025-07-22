import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_request_dto.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_ui_state.freezed.dart';

@freezed
sealed class LoginUiState with _$LoginUiState {
  const factory LoginUiState({
    @Default("") String userId,
    @Default("") String password,
  }) = _LoginUiState;

  const LoginUiState._();

  LoginRequestDto toDto() {
    return LoginRequestDto(userId: userId, password: password);
  }
}
