import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telgani/cache_helper/cache_helper.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Dio dio = Dio();

  String? phoneNumber;
  String? password;
  bool? obscurePassword = true;
  TextEditingController loginNumber = TextEditingController();
  TextEditingController loginPassword = TextEditingController();

  final GlobalKey<FormState> loginKey = GlobalKey();

  login() async {
    try {
      emit(LoginLoading());
      final Response response = await dio
          .post('https://api.dev.telgani.com/api/v4/login', data: {
        "country_code": "+966",
        "phone": phoneNumber,
        "password": password
      });
      // Save Token
      String token = response.data['data']['token']['signature'];
      CacherHelper.saveData(key: 'token', value: token);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure(erorrMesage: e.toString()));
    }
  }

  showAndHidePassword() {
    if (obscurePassword == true)
      obscurePassword = false;
    else if (obscurePassword == false) obscurePassword = true;
    emit(ObscurePassword());
  }
}
