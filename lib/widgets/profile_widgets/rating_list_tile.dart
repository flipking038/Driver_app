import 'package:flutter/material.dart';

class RatingListTile extends StatelessWidget {
  const RatingListTile(
      {super.key, required this.title, required this.subtitle});

  final String title;
  final Widget subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Color(0xffA6A6A6), fontSize: 14),
      ),
      subtitle: subtitle,
      trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xffADB4BD)),
    );
  }
}
