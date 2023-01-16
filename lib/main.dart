import 'package:flutter/material.dart';
import 'package:kizcutz/screens/homepage.dart';

void main() {
  runApp(const Kizcutz());
}

class Kizcutz extends StatelessWidget {
  const Kizcutz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
