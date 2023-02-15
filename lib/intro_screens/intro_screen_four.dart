import 'package:flutter/material.dart';

class IntroScreenFour extends StatelessWidget {
  const IntroScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/Optimized-splash5.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
