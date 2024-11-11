import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Phone Number',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: '05**********',
              hintStyle: TextStyle(color: Color(0xff8A94A6), fontSize: 14),
              fillColor: Color(0xffF5F7FA),
              filled: true,
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}
