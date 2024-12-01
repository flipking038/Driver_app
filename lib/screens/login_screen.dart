import 'package:flutter/material.dart';
import 'package:telgani/constant.dart';
import 'package:telgani/widgets/login_widgets/form_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          child: ListView(
            children: [
              const SizedBox(height: 48),
              Image.asset('assets/image/logo.png'),
              const SizedBox(height: 48),
              const Text(
                'Login',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              const SizedBox(height: 6),
              const Text(
                'Welcome back! Let’s sign in',
                style: TextStyle(color: Color(0xff7D8997), fontSize: 14),
              ),
              const SizedBox(height: 24),
              const FormLogin(),
              const SizedBox(height: 128),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New to Telgani?',
                    style: TextStyle(color: Color(0xff555F6a), fontSize: 14),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Join Now!',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
