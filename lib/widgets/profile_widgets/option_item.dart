import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telgani/widgets/profile_widgets/card_list_tile.dart';

class OptionItem extends StatelessWidget {
  const OptionItem({super.key, required this.optionIcon});

  final String optionIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: CardListTile(
        leading: SvgPicture.asset(optionIcon),
        title: 'Change Language',
        titleTextStyle: const TextStyle(
          color: Color(0xff555F6A),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
