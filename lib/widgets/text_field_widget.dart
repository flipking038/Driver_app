import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    required this.phoneNumber,
    this.obscurePassword,
    this.onChanged,
    this.visibilityIcon,
  });

  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool? obscurePassword;
  final void Function(String)? onChanged;
  final Widget? visibilityIcon;
  final bool phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: TextFormField(
            onChanged: onChanged,
            controller: controller,
            obscureText: obscurePassword ?? false,
            keyboardType: phoneNumber == true ? TextInputType.number : null,
            decoration: InputDecoration(
              suffixIcon: visibilityIcon,
              hintText: hintText,
              hintStyle:
                  const TextStyle(color: Color(0xff8A94A6), fontSize: 14),
              fillColor: const Color(0xffF5F7FA),
              filled: true,
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}
