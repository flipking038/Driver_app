import 'package:flutter/material.dart';
import 'package:telgani/widgets/profile_widgets/header_background_color.dart';
import 'package:telgani/widgets/profile_widgets/user_card_info.dart';
import 'package:telgani/widgets/profile_widgets/user_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFBFBFF),
      body: Stack(
        children: [
          HeaderBackground(
            child: Column(
              children: [
                SizedBox(height: 98),
                Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    UserCardInfo(name: 'Driver Name', company: 'Company Name'),
                    UserImage(),
                    Positioned(
                        top: 128,
                        child: UserCardInfo(name: 'name', company: 'company')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
