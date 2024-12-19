import 'package:flutter/material.dart';
import 'package:telgani/constant.dart';
import 'package:telgani/widgets/change_password_widgets/form_change_password.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Change Password'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      body: const Padding(
          padding: EdgeInsets.only(left: 24, right: 16),
          child: FormChangePassword()),
    );
  }
}
