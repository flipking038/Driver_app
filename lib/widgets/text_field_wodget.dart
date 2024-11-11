import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.label,
    required this.hintText,
    required this.visibility,
  });

  final String label;
  final String hintText;
  final bool visibility;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: TextField(
            obscureText: visibility,
            keyboardType: visibility ? null : TextInputType.number,
            decoration: InputDecoration(
              suffixIcon:
                  visibility ? const Icon(Icons.visibility_rounded) : null,
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
