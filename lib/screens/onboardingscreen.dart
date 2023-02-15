import 'package:flutter/material.dart';
import 'package:kizcutz/intro_screens/intro_screen_four.dart';
import 'package:kizcutz/intro_screens/intro_screen_one.dart';

import 'package:kizcutz/intro_screens/intro_screen_two.dart';

import 'package:kizcutz/util/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController  _controller = PageController();

  //keep track of, if we are on the last page or not.
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          controller: _controller,
          children: const [
            IntroScreenOne(),
            IntroScreenTwo(),
            IntroScreenFour(),
          ],
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.only(
              top: 450,
            ),
            child: Text(
              'Kizcutz',
              style: GoogleFonts.poppins(
                  fontSize: 60.0,
                  letterSpacing: 10,
                  fontWeight: FontWeight.w100,
                  color: Colors.white),
            ),
          ),
        ),
        Container(
          alignment: const Alignment(
            0,
            0.90,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Skip text
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(
                    2,
                  );
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              //skp text ending
              SmoothPageIndicator(
                effect: const ExpandingDotsEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  dotColor: Colors.white,
                  activeDotColor: Colors.orange,
                ),
                controller: _controller,
                count: 3,
              ),
//   next or done button
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Login();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(
                              microseconds: 500,
                            ),
                            curve: Curves.easeIn);
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
            ],
          ),
        )
      ],
    ));
  }
}
