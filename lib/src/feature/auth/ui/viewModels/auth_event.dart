import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  /// 로그인 이벤트
  ///
  ///
  const factory AuthEvent.signIn({
    required String account,
    required String password,
  }) = SignIn;

  /// 로그아웃 이벤트
  ///
  ///
  const factory AuthEvent.signOut() = SignOut;
}
