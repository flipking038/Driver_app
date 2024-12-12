part of 'login_cubit.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailure extends LoginState {
  final String erorrMesage;

  LoginFailure({required this.erorrMesage});
}

class ObscurePassword extends LoginState {}
