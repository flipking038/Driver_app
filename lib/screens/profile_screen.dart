import 'package:flutter/material.dart';
import 'package:telgani/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFF),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 309,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.vertical(
                bottom:
                    Radius.elliptical(MediaQuery.of(context).size.width, 64),
              ),
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
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
                    )),
                const Positioned(
                  top: -33,
                  child: CircleAvatar(
                    radius: 38,
                    backgroundColor: kPrimaryColor,
                    child: CircleAvatar(
                      radius: 33,
                      backgroundImage: AssetImage('assets/image/image.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
