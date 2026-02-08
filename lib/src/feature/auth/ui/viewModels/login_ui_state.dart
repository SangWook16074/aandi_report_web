import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_ui_state.freezed.dart';

@freezed
sealed class LoginUiState with _$LoginUiState {
  const factory LoginUiState.idle({
    @Default("") String userId,
    @Default("") String password,
    @Default("") String errorMsg,
  }) = Idle;
  const factory LoginUiState.loading() = Loading;
}
