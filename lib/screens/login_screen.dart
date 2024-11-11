import 'package:flutter/material.dart';
import 'package:telgani/widgets/text_field_wodget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/logo.png'),
              const SizedBox(height: 62),
              const Text('Login',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              const SizedBox(height: 6),
              const Text('Welcome back! Let’s sign in',
                  style: TextStyle(color: Color(0xff7D8997), fontSize: 14)),
              const SizedBox(height: 24),
              const TextFieldWidget(
                label: 'Phone Number',
                hintText: '05**********',
                visibility: false,
              ),
              const TextFieldWidget(
                label: 'Password',
                hintText: '05**********',
                visibility: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
