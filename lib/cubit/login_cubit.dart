import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Dio dio = Dio();

  String? phoneNumber;
  String? password;

  login() async {
    try {
      final response = await dio
          .post('https://api.dev.telgani.com/api/v4/login', data: {
        "country_code": "+966",
        "phone": phoneNumber,
        "password": password
      });
      print(response);
      print(response.statusCode);
    } catch (e) {
      print(e);
    }
  }
}
