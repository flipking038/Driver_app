part of 'change_password_cubit.dart';

abstract class ChangePasswordState {}

class ChangePasswordInitial extends ChangePasswordState {}

class ChangePasswordLoading extends ChangePasswordState {}

class ChangePasswordSuccess extends ChangePasswordState {}

class ChangePasswordFailure extends ChangePasswordState {
  final String errMesage;

  ChangePasswordFailure({required this.errMesage});
}

class ObscurePassword extends ChangePasswordState {}
