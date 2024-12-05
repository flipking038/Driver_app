import 'package:flutter/material.dart';
import 'package:telgani/constant.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: -33,
      child: CircleAvatar(
        radius: 38,
        backgroundColor: kPrimaryColor,
        child: CircleAvatar(
          radius: 33,
          backgroundImage: AssetImage('assets/image/image.png'),
        ),
      ),
    );
  }
}
