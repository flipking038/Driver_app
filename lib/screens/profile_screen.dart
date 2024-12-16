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
    context.read<ProfileCubit>().profile();

    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xffFBFBFF),
          body: SingleChildScrollView(
            child: Column(
              children: [
                HeaderBackground(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        const SizedBox(height: 98),
                        Stack(
                          alignment: Alignment.topCenter,
                          clipBehavior: Clip.none,
                          children: [
                            UserCardInfo(
                              name:
                                  'Driver ${BlocProvider.of<ProfileCubit>(context).name}',
                              company:
                                  'Company ${BlocProvider.of<ProfileCubit>(context).company}',
                            ),
                            const UserImage(),
                            const Positioned(
                              top: 120,
                              child: Column(
                                children: [
                                  ProfileRatingCard(),
                                  OpteonProfile(),
                                  LogOut()
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
