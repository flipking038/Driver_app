import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserCardInfo extends StatelessWidget {
  const UserCardInfo({super.key, required this.name, required this.company});

  final String name;
  final String company;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 116,
      width: 345,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff1E263C),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/image/company.svg'),
                  const SizedBox(width: 6),
                  Text(
                    company,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
