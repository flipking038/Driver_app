import 'package:flutter/material.dart';
import 'package:telgani/constant.dart';
import 'package:telgani/widgets/profile_widgets/card_list_tile.dart';
import 'package:telgani/widgets/profile_widgets/cards.dart';
import 'package:telgani/widgets/stroke_widget.dart';

class ProfileRatingCard extends StatelessWidget {
  const ProfileRatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Cards(
      cardChild: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: CardListTile(
              title: 'RATINGS(4.5)',
              titleTextStyle: TextStyle(color: Color(0xffA6A6A6), fontSize: 14),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 4),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffFFCE73), size: 22),
                    Icon(Icons.star, color: Color(0xffFFCE73), size: 22),
                    Icon(Icons.star, color: Color(0xffFFCE73), size: 22),
                    Icon(Icons.star, color: Color(0xffFFCE73), size: 22),
                    Icon(Icons.star, color: Color(0xffE0E0E0), size: 22),
                  ],
                ),
              ),
            ),
          ),
          StrokeWidget(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: CardListTile(
              title: 'EARNING',
              titleTextStyle: TextStyle(color: Color(0xffA6A6A6), fontSize: 14),
              subtitle: Text(
                'SR 3,750',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
