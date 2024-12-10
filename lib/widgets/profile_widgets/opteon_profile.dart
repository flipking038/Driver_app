import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telgani/widgets/profile_widgets/card_list_tile.dart';
import 'package:telgani/widgets/profile_widgets/cards.dart';

class OpteonProfile extends StatelessWidget {
  const OpteonProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Cards(
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: CardListTile(
                leading: SvgPicture.asset('assets/image/change_password.svg'),
                title: 'Change Password',
                titleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1.5,
              color: const Color(0xFFD8D9DA),
            ),
            CardListTile(
              leading: SvgPicture.asset('assets/image/change_language.svg'),
              title: 'Change Language',
              titleTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              width: double.infinity,
              height: 1.5,
              color: const Color(0xFFD8D9DA),
            ),
            CardListTile(
              leading: SvgPicture.asset('assets/image/change_language.svg'),
              title: 'Change Language',
              titleTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
