import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

/// 앱의 인증 상태를 나타내는 봉인된 클래스(Sealed Class)입니다.
///

enum AuthenticationStatus { unauthenticated, authenticated, loading }

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthenticationStatus.unauthenticated) AuthenticationStatus status,
  }) = _AuthState;
}
