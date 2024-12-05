import 'package:flutter/material.dart';
import 'package:telgani/constant.dart';

class HeaderBackground extends StatelessWidget {
  const HeaderBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 309,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(MediaQuery.of(context).size.width, 64),
          ),
        ),
        child: child);
  }
}
