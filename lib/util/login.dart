import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kizcutz/util/mybutton.dart';
import 'package:kizcutz/util/photo_image_path.dart';
import 'package:kizcutz/util/text_field.dart';

import '../screens/homepage.dart';

class Login extends StatelessWidget {
  final texteditingcontroller = TextEditingController();
  final passwordeditingcontroller = TextEditingController();

  void signUserIn() {}

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              //logo
              SizedBox(
                height: 170,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //welcome back,youve been missed
              Text(
                'Welcome back, you\'ve been missed!',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              //username Textfield
              MyTextField(
                controller: texteditingcontroller,
                hintText: 'email',
                myobscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              //Password field
              MyTextField(
                controller: passwordeditingcontroller,
                hintText: 'password',
                myobscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: GoogleFonts.poppins(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //sign in button
              MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Text(
                        'Or continue with',
                        style: GoogleFonts.poppins(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //google button
                  SquareImage(
                    imagePath: 'assets/images/google.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  //apple button
                  SquareImage(
                    imagePath: 'assets/images/pngwing.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Register Now',
                    style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
