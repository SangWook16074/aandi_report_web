import 'package:equatable/equatable.dart';

/// 로그인 UI 사용자 이벤트
///
///
sealed class LoginUiEvent extends Equatable {}

/// 사용자 계정 입력 이벤트
///
///
final class UserAccountInput extends LoginUiEvent {
  final String userId;

  UserAccountInput({
    required this.userId,
  });

  @override
  List<Object?> get props => [
        userId,
      ];
}

/// 사용자 비밀번호 입력 이벤트
///
///
final class UserPasswordInput extends LoginUiEvent {
  final String password;

  UserPasswordInput({required this.password});
  @override
  List<Object?> get props => [
        password,
      ];
}

/// 사용자 로그인 이벤트
///
///
final class Login extends LoginUiEvent {
  @override
  List<Object?> get props => [];
}

final class LoginFail extends LoginUiEvent {
  final String errorMsg;
  LoginFail({this.errorMsg = "에러가 발생했습니다."});
  @override
  List<Object?> get props => [
        errorMsg,
      ];
}
