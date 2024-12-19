import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telgani/constant.dart';

part 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit() : super(ChangePasswordInitial());

  Dio dio = Dio();

  String? password;
  String? newPassword;
  String? confirmNewPassword;

  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  final GlobalKey<FormState> changePasswordKey = GlobalKey();

  changePassword() async {
    dio.options.headers['Authorization'] = "Bearer $token";

    final Response response = await dio
        .put('https://api.dev.telgani.com/api/v4/driver/password', data: {
      'actual_password': password,
      'new_password': newPassword,
      'new_password_confirmation': confirmNewPassword,
    });
  }
}
