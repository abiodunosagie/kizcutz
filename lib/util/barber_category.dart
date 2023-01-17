import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarberCategory extends StatelessWidget {
  const BarberCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //shaving column
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  'assets/icons/beard.png',
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                'Shaving',
                style: GoogleFonts.poppins(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          //haircut column
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  'assets/icons/scissors.png',
                  fit: BoxFit.contain,
                  color: Color(0xff3E57B0),
                ),
              ),
              Text(
                'Haircut',
                style: GoogleFonts.poppins(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          //style column
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  'assets/icons/shampoo.png',
                  fit: BoxFit.contain,
                  color: Color(0xff3E57B0),
                ),
              ),
              Text(
                'Style',
                style: GoogleFonts.poppins(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          //coloring column
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  'assets/icons/brush.png',
                  fit: BoxFit.contain,
                  color: Color(0xff3E57B0),
                ),
              ),
              Text(
                'Coloring',
                style: GoogleFonts.poppins(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          //care column
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  'assets/icons/cream.png',
                  fit: BoxFit.contain,
                  color: Color(0xff3E57B0),
                ),
              ),
              Text(
                'Care',
                style: GoogleFonts.poppins(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
