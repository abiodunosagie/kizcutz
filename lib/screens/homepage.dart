import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kizcutz/screens/salon_card.dart';

import '../util/barber_category.dart';
import '../util/call_to_action.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3E57B0),
        elevation: 0,
        title: Text(
          'KIZCUTZ',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w900,
            fontSize: 30.0,
            letterSpacing: 5,
          ),
        ),
        centerTitle: true,
      ),
      //Bottom Navigation Section
      bottomNavigationBar: GNav(
        activeColor: Color(0xff3E57B0),
        gap: 8,
        tabs: [
          GButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              );
            },
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              );
            },
            icon: Icons.cut,
            text: 'Shops',
          ),
          GButton(
            icon: Icons.calendar_month,
            text: 'Booking',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          )
        ],
      ),
      //searh bar section
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(
                      10,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        child: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search services or business',
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Icon(
                          Icons.tune,
                          color: Colors.grey[600],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            //Category
            BarberCategory(),

            SizedBox(
              height: 10,
            ),
            //Call to action
            CallToAction(),
            //List view vertical list here

            Text(
              'Recommended for you',
              style: GoogleFonts.poppins(
                color: Colors.black54,
                fontWeight: FontWeight.w800,
                fontSize: 20.0,
              ),
            ),
            // Salon card
            Container(
              height: 600,
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return SalonCard(
                      companyName: 'Abiodun osagie',
                      companyImagePath: 'assets/images/splash3.jpg',
                      openTime: '07:00am - 6:00pm',
                      distanceAway: '1.2km',
                      rating: '(4.8)',
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
