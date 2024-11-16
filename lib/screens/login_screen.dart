import 'package:flutter/material.dart';
import 'package:telgani/constant.dart';
import 'package:telgani/text_field_controller/text_field_controller.dart';
import 'package:telgani/widgets/bottom_navigation_bar_widget.dart';
import 'package:telgani/widgets/login_button.dart';
import 'package:telgani/widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: key,
              child: SizedBox(
                child: ListView(
                  children: [
                    const SizedBox(height: 48),
                    Image.asset('assets/image/logo.png'),
                    const SizedBox(height: 48),
                    const Text('Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                    const SizedBox(height: 6),
                    const Text('Welcome back! Let’s sign in',
                        style:
                            TextStyle(color: Color(0xff7D8997), fontSize: 14)),
                    const SizedBox(height: 24),
                    TextFieldWidget(
                      controller: TextFieldController().loginNumber,
                      label: 'Phone Number',
                      hintText: '05**********',
                      visibility: false,
                    ),
                    const SizedBox(height: 23),
                    TextFieldWidget(
                      controller: TextFieldController().loginPassword,
                      label: 'Password',
                      hintText: 'Password',
                      visibility: true,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Forgot Password ?',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 14),
                    ),
                    const SizedBox(height: 32),
                    const LoginButtton(),
                    const SizedBox(height: 161),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New to Telgani?',
                          style:
                              TextStyle(color: Color(0xff555F6a), fontSize: 14),
                        ),
                        SizedBox(width: 8),
                        Text('Join Now!',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w900)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarWidget());
  }
}
