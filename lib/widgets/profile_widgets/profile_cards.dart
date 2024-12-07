import 'package:flutter/material.dart';
import 'package:telgani/constant.dart';
import 'package:telgani/widgets/profile_widgets/rating_list_tile.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            const RatingListTile(
              title: 'RATINGS(4.5)',
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
            Container(
              width: double.infinity,
              height: 1.5,
              color: const Color(0xFFD8D9DA),
            ),
            const RatingListTile(
                title: 'EARNING',
                subtitle: Text(
                  'SR 3,750',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
