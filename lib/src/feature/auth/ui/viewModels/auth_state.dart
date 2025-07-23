import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  /// 인증 완료 상태
  ///
  ///
  const factory AuthState.authenticated() = Authenticated;

  /// 미인가 상태
  ///
  ///
  const factory AuthState.unauthenticated() = Unauthenticated;
}
