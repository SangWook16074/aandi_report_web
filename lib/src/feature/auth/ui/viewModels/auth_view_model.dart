import 'dart:developer';

import 'package:a_and_i_report_web_server/src/feature/auth/providers/get_user_access_token_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/providers/delete_user_access_token_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/providers/user_login_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/data/dtos/login_request_dto.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_event.dart';
import 'package:a_and_i_report_web_server/src/feature/auth/ui/viewModels/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_view_model.g.dart';

/// 앱 전반의 인증 상태를 관리하는 ViewModel입니다.
///
/// [AsyncNotifier]를 상속받아 인증 상태([AuthState])를 비동기적으로 관리합니다.
/// `keepAlive: true`로 설정되어 있어, 앱 실행 중 상태가 유지됩니다.
@Riverpod(keepAlive: true)
class AuthViewModel extends _$AuthViewModel {
  /// 초기 상태를 설정합니다.
  ///
  /// 앱 실행 시 로컬 저장소에 저장된 액세스 토큰의 존재 여부를 확인합니다.
  /// - 토큰 존재: [Authenticated] (로그인 상태)
  /// - 토큰 없음: [Unauthenticated] (비로그인 상태)
  @override
  AuthState build() {
    _init();
    return AuthState(status: AuthenticationStatus.loading);
  }

  void _init() async {
    try {
      final accessToken =
          await ref.read(getUserAccessTokenUsecaseProvider).call();
      if (accessToken == null) {
        log("토큰이 존재하지 않습니다");
        state = AuthState(status: AuthenticationStatus.unauthenticated);
        return;
      }

      state = AuthState(status: AuthenticationStatus.authenticated);
    } catch (e) {
      log(e.toString()); // TODO
      state = AuthState(
        status: AuthenticationStatus.unauthenticated,
      );
    }
  }

  /// UI에서 발생한 인증 관련 이벤트를 처리합니다.
  ///
  /// - [SignIn]: 로그인 요청을 처리합니다. UseCase를 호출하고 성공 시 [Authenticated]로 상태를 변경합니다.
  /// - [SignOut]: 로그아웃 요청을 처리합니다. 토큰을 삭제하고 [Unauthenticated]로 상태를 변경합니다.
  Future<void> onEvent(AuthEvent event) async {
    switch (event) {
      case SignIn():
        try {
          final dto =
              LoginRequestDto(userId: event.account, password: event.password);
          await ref.read(userLoginUsecaseProvider).call(dto);
          state = state.copyWith(status: AuthenticationStatus.authenticated);
        } catch (e) {
          state = state.copyWith(status: AuthenticationStatus.unauthenticated);
          rethrow;
        }
        break;
      case SignOut():
        await ref.read(deleteUserAccessTokenUsecaseProvider).call();
        state = state.copyWith(status: AuthenticationStatus.unauthenticated);
        break;
    }
    log(state.toString());
  }
}
