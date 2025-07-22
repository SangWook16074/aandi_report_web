import 'package:equatable/equatable.dart';

sealed class LoginUiEvent extends Equatable {}

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

final class UserPasswordInput extends LoginUiEvent {
  final String password;

  UserPasswordInput({required this.password});
  @override
  List<Object?> get props => [
        password,
      ];
}

final class Login extends LoginUiEvent {
  final String account;
  final String password;
  Login({required this.account, required this.password});
  @override
  List<Object?> get props => [
        account,
        password,
      ];
}
