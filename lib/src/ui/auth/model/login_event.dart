import 'package:equatable/equatable.dart';

sealed class LoginEvent extends Equatable {}

final class UserAccountInput extends LoginEvent {
  final String account;

  UserAccountInput({
    required this.account,
  });

  @override
  List<Object?> get props => [
        account,
      ];
}

final class UserPasswordInput extends LoginEvent {
  final String password;

  UserPasswordInput({required this.password});
  @override
  List<Object?> get props => [
        password,
      ];
}

final class Login extends LoginEvent {
  final String account;
  final String password;
  Login({required this.account, required this.password});
  @override
  List<Object?> get props => [
        account,
        password,
      ];
}
