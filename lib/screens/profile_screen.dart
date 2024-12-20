import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:telgani/cubit/profile/profile_cubit.dart';
import 'package:telgani/widgets/profile_widgets/header_background_color.dart';
import 'package:telgani/widgets/profile_widgets/logout.dart';
import 'package:telgani/widgets/profile_widgets/option_profile.dart';
import 'package:telgani/widgets/profile_widgets/profile_rating_cards.dart';
import 'package:telgani/widgets/profile_widgets/user_card_info.dart';
import 'package:telgani/widgets/profile_widgets/user_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // context.read<ProfileCubit>().profile();

    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return const Scaffold(
          backgroundColor: Color(0xffFBFBFF),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    HeaderBackground(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                      ),
                    ),
                    Positioned(
                      bottom: -58,
                      child: UserCardInfo(
                        name: 'Driver ',
                        company: 'Company ',
                      ),
                    ),
                    UserImage(),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 98),
                    Column(
                      children: [
                        ProfileRatingCard(),
                        OpteonProfile(),
                        LogOut(),
                        SizedBox(height: 10)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
