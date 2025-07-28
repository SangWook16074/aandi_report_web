import 'dart:developer';

import 'package:a_and_i_report_web_server/src/feature/auth/providers/get_user_access_token_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/providers/delete_user_access_token_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/providers/user_login_usecase_provider.dart';
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
      if (accessToken == null) {
        log("토큰이 존재하지 않습니다");
        return Unauthenticated();
      }

      return Authenticated();
    } catch (e) {
      log(e.toString()); // TODO
      return Unauthenticated();
    }
  }

  Future<void> onEvent(AuthEvent event) async {
    switch (event) {
      case SignIn():
        try {
          final dto =
              LoginRequestDto(userId: event.account, password: event.password);
          await ref.read(userLoginUsecaseProvider).call(dto);
          state = AsyncData(Authenticated());
        } catch (e) {
          state = AsyncData(Unauthenticated());
          rethrow;
        }
        break;
      case SignOut():
        await ref.read(deleteUserAccessTokenUsecaseProvider).call();
        state = AsyncData(Unauthenticated());
        break;
      default:
        // 다른 이벤트는 현재 처리하지 않음
        break;
    }
    log(state.toString());
  }
}
