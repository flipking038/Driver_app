part of 'login_cubit.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoding extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFailure extends LoginState {}

class ObscurePassword extends LoginState {}
