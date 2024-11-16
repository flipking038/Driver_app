import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TextFieldController {
  Dio dio = Dio();
  static TextEditingController loginNumber = TextEditingController();
  static TextEditingController loginPassword = TextEditingController();

  login() async {
    try {
      final response = await dio.post('/api/v4/login', data: {
        "phone": loginNumber,
        "password": loginPassword,
      });
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
