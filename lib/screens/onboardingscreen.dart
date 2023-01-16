import 'package:flutter/material.dart';
import 'package:kizcutz/intro_screens/intro_screen_four.dart';
import 'package:kizcutz/intro_screens/intro_screen_one.dart';
import 'package:kizcutz/intro_screens/intro_screen_three.dart';
import 'package:kizcutz/intro_screens/intro_screen_two.dart';
import 'package:kizcutz/screens/homepage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

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
              onLastPage = (index == 3);
            });
          },
          controller: _controller,
          children: [
            IntroScreenOne(),
            IntroScreenTwo(),
            IntroScreenThree(),
            IntroScreenFour(),
          ],
        ),
        Center(
          child: Container(
            padding: EdgeInsets.only(
              top: 623,
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
          alignment: Alignment(
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
                    3,
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              //skp text ending
              SmoothPageIndicator(
                effect: ExpandingDotsEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  dotColor: Colors.white,
                  activeDotColor: Colors.orange,
                ),
                controller: _controller,
                count: 4,
              ),
//   next or done button
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(
                              microseconds: 500,
                            ),
                            curve: Curves.easeIn);
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
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
