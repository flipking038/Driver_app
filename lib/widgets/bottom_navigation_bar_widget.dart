import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 120),
      child: Container(
        width: 135,
        height: 5,
        decoration: BoxDecoration(
            color: const Color(0xffE0E0E0),
            borderRadius: BorderRadius.circular(100)),
      ),
    );
  }
}
