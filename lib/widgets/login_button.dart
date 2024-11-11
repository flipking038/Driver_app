import 'package:flutter/material.dart';
import 'package:telgani/constant.dart';

class LoginButtton extends StatelessWidget {
  const LoginButtton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: kPrimaryColor,
          fixedSize: const Size(double.infinity, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: const Text('Login'),
    );
  }
}
