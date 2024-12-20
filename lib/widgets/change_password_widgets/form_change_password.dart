import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telgani/constant.dart';
import 'package:telgani/cubit/change_password_cubit/change_password_cubit.dart';
import 'package:telgani/screens/login_screen.dart';
import 'package:telgani/widgets/custom_button.dart';
import 'package:telgani/widgets/text_field_widget.dart';

class FormChangePassword extends StatelessWidget {
  const FormChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
      listener: (context, state) {
        if (state is ChangePasswordSuccess) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        }
      },
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<ChangePasswordCubit>(context).changePasswordKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 58),
                TextFieldWidget(
                  textInputAction: TextInputAction.next,
                  phoneNumber: false,
                  controller: BlocProvider.of<ChangePasswordCubit>(context)
                      .passwordController,
                  label: 'Password',
                  hintText: 'Password',
                  onChanged: (value) =>
                      BlocProvider.of<ChangePasswordCubit>(context).password =
                          value,
                  obscurePassword: BlocProvider.of<ChangePasswordCubit>(context)
                      .obscurePassword,
                  visibilityIcon: IconButton(
                    onPressed: () =>
                        BlocProvider.of<ChangePasswordCubit>(context)
                            .showAndHidePassword(),
                    icon: BlocProvider.of<ChangePasswordCubit>(context)
                                .obscurePassword ==
                            true
                        ? const Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: kPrimaryColor,
                          ),
                  ),
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  phoneNumber: false,
                  controller: BlocProvider.of<ChangePasswordCubit>(context)
                      .newPasswordController,
                  label: 'New Password',
                  hintText: 'New Password',
                  textInputAction: TextInputAction.next,
                  onChanged: (value) =>
                      BlocProvider.of<ChangePasswordCubit>(context)
                          .newPassword = value,
                  obscurePassword: BlocProvider.of<ChangePasswordCubit>(context)
                      .obscurePassword,
                  visibilityIcon: IconButton(
                    onPressed: () =>
                        BlocProvider.of<ChangePasswordCubit>(context)
                            .showAndHidePassword(),
                    icon: BlocProvider.of<ChangePasswordCubit>(context)
                                .obscurePassword ==
                            true
                        ? const Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: kPrimaryColor,
                          ),
                  ),
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  phoneNumber: false,
                  controller: BlocProvider.of<ChangePasswordCubit>(context)
                      .confirmNewPasswordController,
                  label: 'Confirm Password',
                  hintText: 'Confirm Password',
                  textInputAction: TextInputAction.go,
                  onChanged: (value) =>
                      BlocProvider.of<ChangePasswordCubit>(context)
                          .confirmNewPassword = value,
                  obscurePassword: BlocProvider.of<ChangePasswordCubit>(context)
                      .obscurePassword,
                  visibilityIcon: IconButton(
                    onPressed: () =>
                        BlocProvider.of<ChangePasswordCubit>(context)
                            .showAndHidePassword(),
                    icon: BlocProvider.of<ChangePasswordCubit>(context)
                                .obscurePassword ==
                            true
                        ? const Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: kPrimaryColor,
                          ),
                  ),
                ),
                const SizedBox(height: 32),
                state is ChangePasswordLoading
                    ? const Center(child: CircularProgressIndicator())
                    : CustomButtton(
                        textButton: 'Save',
                        onPressed: () {
                          if (BlocProvider.of<ChangePasswordCubit>(context)
                              .changePasswordKey
                              .currentState!
                              .validate()) {
                            BlocProvider.of<ChangePasswordCubit>(context)
                                .changePassword();
                          }
                        },
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
