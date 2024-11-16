import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TextFieldController {
  Dio dio = Dio();
  TextEditingController loginNumber = TextEditingController();
  TextEditingController loginPassword = TextEditingController();

  login() async {
    try {
      final response =
          await dio.post('https://api.dev.telgani.com/api/v4/login', data: {
        "country_code": "+966",
        "phone": loginNumber.text,
        "password": loginPassword.text
      });
      print(response);
      print(response.statusCode);
    } catch (e) {
      print(e);
    }
  }
}
