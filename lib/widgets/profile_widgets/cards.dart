import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.cardChild});

  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: Colors.white,
        child: cardChild,
      ),
    );
  }
}
