import 'package:flutter/material.dart';
import 'package:telgani/widgets/profile_widgets/cards.dart';
import 'package:telgani/widgets/profile_widgets/option_item.dart';
import 'package:telgani/widgets/stroke_widget.dart';

class OpteonProfile extends StatelessWidget {
  const OpteonProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Cards(
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            OptionItem(
              optionIcon: 'assets/image/change_password.svg',
              title: 'Change Password',
            ),
            Padding(
              padding: EdgeInsets.only(left: 52),
              child: StrokeWidget(),
            ),
            OptionItem(
              optionIcon: 'assets/image/change_language.svg',
              title: 'Change Language',
            ),
            Padding(
              padding: EdgeInsets.only(left: 52),
              child: StrokeWidget(),
            ),
            OptionItem(
              optionIcon: 'assets/image/instructions.svg',
              title: 'Instructions',
            ),
            Padding(
              padding: EdgeInsets.only(left: 52),
              child: StrokeWidget(),
            ),
            OptionItem(
              optionIcon: 'assets/image/add_suggestion.svg',
              title: 'Add Suggestion',
            ),
          ],
        ),
      ),
    );
  }
}
