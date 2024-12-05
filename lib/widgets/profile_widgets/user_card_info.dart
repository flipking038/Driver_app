import 'package:flutter/material.dart';

class UserCardInfo extends StatelessWidget {
  const UserCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 118,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: const Padding(
        padding: EdgeInsets.all(27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('data'),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
