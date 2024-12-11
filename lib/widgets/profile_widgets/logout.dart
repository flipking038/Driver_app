import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telgani/widgets/profile_widgets/card_list_tile.dart';
import 'package:telgani/widgets/profile_widgets/cards.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Cards(
      cardChild: CardListTile(
        leading: SvgPicture.asset('assets/image/Logout.svg'),
        title: 'LogOut',
        titleTextStyle: const TextStyle(
          color: Color(0xff555F6A),
        ),
      ),
    );
  }
}
