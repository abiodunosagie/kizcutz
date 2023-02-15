import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'homepage.dart';

class HomePageTwo extends StatefulWidget {
  const HomePageTwo({Key? key}) : super(key: key);

  @override
  State<HomePageTwo> createState() => _HomePageTwoState();
}

class _HomePageTwoState extends State<HomePageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(
          0xff3E57B0,
        ),
        centerTitle: true,
        title: Text(
          'KIZCUTZ',
          style: GoogleFonts.poppins(
            fontSize: 25.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: const [
          Padding(
            padding:  EdgeInsets.only(
              right: 15,
            ),
            child: Icon(
              Icons.notification_add_rounded,
              color: Colors.white,
            ),
          )
        ],
        elevation: 0,
      ),
      //bottom navigation section
      bottomNavigationBar: GNav(
        activeColor:const Color(0xff3E57B0),
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
          const GButton(
            icon: Icons.calendar_month,
            text: 'Booking',
          ),
          const GButton(
            icon: Icons.person,
            text: 'Profile',
          )
        ],
      ),
      //main body section
      body: Column(
        children: [
          //welcome message section
          Padding(
            padding: const EdgeInsets.only(right: 90.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back, Kiz',
                  style: GoogleFonts.poppins(
                    fontSize: 30.0,
                    color:const Color(
                      0xff95918D,
                    ),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                //welcome message address.
                const Text(
                  '328, Southern Ave, Danville, USA',
                  style: TextStyle(
                    color: Color(
                      0xff9B9996,
                    ),
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          //search bar section
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
                    const SizedBox(
                      height: 30,
                      child: Icon(
                        Icons.search,
                        color: Color(
                          0xffD6D2CE,
                        ),
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search services or business',
                          hintStyle: GoogleFonts.poppins(
                            color:const Color(0xff95918D),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      child: Icon(
                        Icons.tune,
                        color: Color(
                          0xff3E57B0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          //services section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Services',
                  style: GoogleFonts.poppins(
                    fontSize: 20.0,
                    color:const Color(
                      0xff3D3A38,
                    ),
                  ),
                ),
                Text(
                  'See All',
                  style: GoogleFonts.poppins(
                      fontSize: 20.0,
                      color:const Color(
                        0xff3D3A38,
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.orange,
                    height: 200,
                    child:const ListTile(),
                  );
                }),
              )
            ],
          ) //best saloon
        ],
      ),
    );
  }
}
