import 'dart:developer';

import 'package:a_and_i_report_web_server/src/core/providers/delete_user_access_token_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/core/providers/get_user_access_token_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/core/providers/user_login_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_request_dto.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_event.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_view_model.g.dart';

@Riverpod(keepAlive: true)
class AuthViewModel extends _$AuthViewModel {
  @override
  Future<AuthState> build() async {
    try {
      final accessToken =
          await ref.read(getUserAccessTokenUsecaseProvider).call();
      log(accessToken ?? "토큰 X");
      if (accessToken == null) {
        return Unauthenticated();
      }

      return Authenticated();
    } catch (e) {
      log(e.toString()); // TODO
      return Unauthenticated();
    }
  }

  void onEvent(AuthEvent event) {
    event.when(signIn: (String account, String password) async {
      final dto = LoginRequestDto(userId: account, password: password);
      await ref.read(userLoginUsecaseProvider).call(dto);

      state = AsyncData(Authenticated());
    }, signOut: () async {
      await ref.read(deleteUserAccessTokenUsecaseProvider).call();
      state = AsyncData(Unauthenticated());
    });
    log(state.toString());
  }
}
