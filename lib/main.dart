import 'package:flutter/material.dart';
import 'package:kizcutz/screens/onboardingscreen.dart';

void main() {
  runApp(const Kizcutz());
}

class Kizcutz extends StatelessWidget {
  const Kizcutz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
