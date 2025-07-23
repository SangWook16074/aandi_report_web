import 'dart:developer';

import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_event.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/login_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_ui_view_model.g.dart';

@riverpod
class LoginUiViewModel extends _$LoginUiViewModel {
  @override
  LoginUiState build() {
    return Idle();
  }

  /// 로그인 UI 이벤트 핸들링
  ///
  ///
  void onEvent(LoginUiEvent event) {
    switch (event) {
      // 사용자 계정 입력 이벤트 핸들링
      case UserAccountInput():
        state = (state as Idle).copyWith(userId: event.userId);
        log(state.toString());
      // 사용자 비밀번호 입력 이벤트 핸들링
      case UserPasswordInput():
        state = (state as Idle).copyWith(password: event.password);
      // 사용자 로그인 이벤트 핸들링
      // 추후 삭제 예정
      case Login():
        state = Loading();
      // 사용자 로그인 실패 핸들링
      case LoginFail():
        state = Idle(errorMsg: event.errorMsg);
    }
  }
}
