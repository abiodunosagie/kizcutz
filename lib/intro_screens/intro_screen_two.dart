import 'package:flutter/material.dart';

class IntroScreenTwo extends StatelessWidget {
  const IntroScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/splash2.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
