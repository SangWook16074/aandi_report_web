import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

/// 앱의 인증 상태를 나타내는 봉인된 클래스(Sealed Class)입니다.
@freezed
sealed class AuthState with _$AuthState {
  /// 인증 완료 상태 (로그인 성공)
  const factory AuthState.authenticated() = Authenticated;

  /// 미인증 상태 (로그인 전 또는 로그아웃)
  const factory AuthState.unauthenticated() = Unauthenticated;
}
