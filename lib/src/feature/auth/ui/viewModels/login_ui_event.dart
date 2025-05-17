import 'package:equatable/equatable.dart';

sealed class LoginUiEvent extends Equatable {}

final class UserAccountInput extends LoginUiEvent {
  final String account;

  UserAccountInput({
    required this.account,
  });

  @override
  List<Object?> get props => [
        account,
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
