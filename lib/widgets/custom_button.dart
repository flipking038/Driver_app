import 'package:flutter/material.dart';
import 'package:telgani/constant.dart';

class CustomButtton extends StatelessWidget {
  const CustomButtton({super.key, this.onPressed, required this.textButton});

  final void Function()? onPressed;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(textButton),
      ),
    );
  }
}
