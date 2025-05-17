import 'dart:developer';

import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_event.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_request_dto.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_ui_view_model.g.dart';

@riverpod
class LoginUiViewModel extends _$LoginUiViewModel {
  @override
  LoginUiState build() {
    return const LoginUiState();
  }

  onEvent(LoginUiEvent event) {
    switch (event) {
      case UserAccountInput():
        state = state.copyWith(account: event.account);
        log(state.toString());
      case UserPasswordInput():
        state = state.copyWith(password: event.password);
      case Login():
    }
    log(state.toString());
  }
}
