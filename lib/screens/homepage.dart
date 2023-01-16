import 'package:flutter/material.dart';
import 'package:kizcutz/intro_screens/intro_screen_four.dart';
import 'package:kizcutz/intro_screens/intro_screen_one.dart';
import 'package:kizcutz/intro_screens/intro_screen_three.dart';
import 'package:kizcutz/intro_screens/intro_screen_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            IntroScreenOne(),
            IntroScreenTwo(),
            IntroScreenThree(),
            IntroScreenFour(),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.89),
          child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
                dotWidth: 10,
                dotHeight: 10,
                dotColor: Colors.white,
                activeDotColor: Colors.orange),
            controller: _controller,
            count: 4,
          ),
        )
      ],
    ));
  }
}
