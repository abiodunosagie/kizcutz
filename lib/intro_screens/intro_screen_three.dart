import 'package:flutter/material.dart';

class IntroScreenThree extends StatelessWidget {
  const IntroScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/splash4.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
