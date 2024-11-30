import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telgani/constant.dart';
import 'package:telgani/cubit/login_cubit.dart';
import 'package:telgani/widgets/login_widgets/login_button.dart';
import 'package:telgani/widgets/text_field_widget.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFieldWidget(
              phoneNumber: true,
              controller: BlocProvider.of<LoginCubit>(context).loginNumber,
              label: 'Phone Number',
              hintText: '05**********',
              onChanged: (value) =>
                  BlocProvider.of<LoginCubit>(context).phoneNumber = value,
            ),
            const SizedBox(height: 23),
            TextFieldWidget(
              phoneNumber: false,
              controller: BlocProvider.of<LoginCubit>(context).loginPassword,
              label: 'Password',
              hintText: 'Password',
              onChanged: (value) =>
                  BlocProvider.of<LoginCubit>(context).password = value,
              obscurePassword:
                  BlocProvider.of<LoginCubit>(context).obscurePassword,
              visibilityIcon: IconButton(
                onPressed: () =>
                    BlocProvider.of<LoginCubit>(context).showAndHidePassword(),
                icon:
                    BlocProvider.of<LoginCubit>(context).obscurePassword == true
                        ? const Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                          )
                        : const Icon(Icons.visibility_off),
              ),
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
            LoginButtton(onPressed: () {
              BlocProvider.of<LoginCubit>(context).login();
            }),
          ],
        );
      },
    );
  }
}