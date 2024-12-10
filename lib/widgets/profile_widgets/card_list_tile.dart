import 'package:flutter/material.dart';

class CardListTile extends StatelessWidget {
  const CardListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    required this.titleTextStyle,
  });

  final String title;
  final Widget? subtitle;
  final Widget? leading;
  final TextStyle titleTextStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
      ),
      titleTextStyle: titleTextStyle,
      subtitle: subtitle,
      trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xffADB4BD)),
    );
  }
}
