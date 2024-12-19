import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telgani/constant.dart';
import 'package:telgani/cubit/change_password_cubit/change_password_cubit.dart';
import 'package:telgani/cubit/login/login_cubit.dart';
import 'package:telgani/widgets/login_widgets/login_button.dart';
import 'package:telgani/widgets/text_field_widget.dart';

class FormChangePassword extends StatelessWidget {
  const FormChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<ChangePasswordCubit>(context).changePasswordKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 58),
              TextFieldWidget(
                phoneNumber: false,
                controller: BlocProvider.of<ChangePasswordCubit>(context)
                    .passwordController,
                label: 'Password',
                hintText: 'Password',
                onChanged: (value) =>
                    BlocProvider.of<ChangePasswordCubit>(context).password =
                        value,
                obscurePassword:
                    BlocProvider.of<LoginCubit>(context).obscurePassword,
                visibilityIcon: IconButton(
                  onPressed: () => BlocProvider.of<LoginCubit>(context)
                      .showAndHidePassword(),
                  icon: BlocProvider.of<LoginCubit>(context).obscurePassword ==
                          true
                      ? const Icon(
                          Icons.visibility,
                          color: kPrimaryColor,
                        )
                      : const Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                phoneNumber: false,
                controller: BlocProvider.of<ChangePasswordCubit>(context)
                    .newPasswordController,
                label: 'New Password',
                hintText: 'New Password',
                onChanged: (value) =>
                    BlocProvider.of<ChangePasswordCubit>(context).newPassword =
                        value,
                obscurePassword:
                    BlocProvider.of<LoginCubit>(context).obscurePassword,
                visibilityIcon: IconButton(
                  onPressed: () => BlocProvider.of<LoginCubit>(context)
                      .showAndHidePassword(),
                  icon: BlocProvider.of<LoginCubit>(context).obscurePassword ==
                          true
                      ? const Icon(
                          Icons.visibility,
                          color: kPrimaryColor,
                        )
                      : const Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                phoneNumber: false,
                controller: BlocProvider.of<ChangePasswordCubit>(context)
                    .confirmNewPasswordController,
                label: 'Confirm Password',
                hintText: 'Confirm Password',
                onChanged: (value) =>
                    BlocProvider.of<ChangePasswordCubit>(context)
                        .confirmNewPassword = value,
                obscurePassword:
                    BlocProvider.of<LoginCubit>(context).obscurePassword,
                visibilityIcon: IconButton(
                  onPressed: () => BlocProvider.of<LoginCubit>(context)
                      .showAndHidePassword(),
                  icon: BlocProvider.of<LoginCubit>(context).obscurePassword ==
                          true
                      ? const Icon(
                          Icons.visibility,
                          color: kPrimaryColor,
                        )
                      : const Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(height: 32),
              LoginButtton(
                textButton: 'Save',
                onPressed: () {
                  if (BlocProvider.of<LoginCubit>(context)
                      .loginKey
                      .currentState!
                      .validate()) {
                    BlocProvider.of<LoginCubit>(context).login();
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
