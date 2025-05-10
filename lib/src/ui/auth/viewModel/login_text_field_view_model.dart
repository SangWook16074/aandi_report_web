import 'dart:developer';

import 'package:a_and_i_report_web_server/src/ui/auth/model/login_event.dart';
import 'package:a_and_i_report_web_server/src/ui/auth/model/login_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_text_field_view_model.g.dart';

@riverpod
class LoginTextFieldViewModel extends _$LoginTextFieldViewModel {
  @override
  LoginModel build() {
    return const LoginModel();
  }

  onEvent(LoginEvent event) {
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
