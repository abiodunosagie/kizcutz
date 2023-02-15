import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kizcutz/screens/profile_page.dart';
import 'package:kizcutz/screens/shop_page.dart';
import 'package:kizcutz/screens/store_details_page/storeDetails.dart';

import '../model/stores.dart';

import '../util/call_to_action.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // list invoke method here
  final List<Stores> storesList = Stores.getStores();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff3E57B0),
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
        activeColor: const Color(0xff3E57B0),
        gap: 8,
        tabs: [
          const GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShopPage(),
                ),
              );
            },
            icon: Icons.calendar_month,
            text: 'Booking',
          ),
          GButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
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
                      SizedBox(
                        height: 30,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ShopPage(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.search,
                            color: Colors.grey[600],
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search services or business',
                          ),
                        ),
                      ),
                      SizedBox(
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
            const SizedBox(
              height: 10.0,
            ),
            //Category
            /*SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Services(
                  image: 'assets/icons/makeup.png',
                  servicetext: 'Shave',
                ),
              ),
            ),*/

            //Categories
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //shaving category
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                // ignore: non_constant_identifier_names
                                builder: (Context) => const ShopPage()));
                      },
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          color: const Color(0xff3E57B0),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/beard.png',
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Shaving',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //haircut category
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                // ignore: non_constant_identifier_names
                                builder: (Context) => const ShopPage()));
                      },
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          color: const Color(0xff3E57B0),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/sci.png',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Hair Cut',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //skin care category
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                // ignore: non_constant_identifier_names
                                builder: (Context) => const ShopPage()));
                      },
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          color: const Color(0xff3E57B0),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/bottle.png',
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Skin Care',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //coloring category
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                // ignore: non_constant_identifier_names
                                builder: (Context) => const ShopPage()));
                      },
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          color: const Color(0xff3E57B0),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/brush.png',
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Coloring',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //care category
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ShopPage()));
                      },
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          color: const Color(0xff3E57B0),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/cream.png',
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Care',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            //Call to action
            const CallToAction(),

            //List view vertical list here
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Recommended for you',
                style: GoogleFonts.poppins(
                  color: Colors.black54,
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Salon card
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (
                  BuildContext context,
                  int index,
                ) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                StorelistViewDetails(store: storesList[index]),
                          ));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 2,
                                  color: Colors.black54,
                                )
                              ],
                              border: Border.all(color: Colors.grey.shade500),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //image section
                              Flexible(
                                child: SizedBox(
                                  height: 200,
                                  width: 150,
                                  child: Image.asset(
                                    storesList[index].companyImagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              // Company details section
                              Padding(
                                padding: const EdgeInsets.all(
                                  5.0,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //company name
                                    Flexible(
                                      child: Text(
                                        storesList[index].companyName,
                                        style: GoogleFonts.poppins(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    //open now and closed
                                    Text(
                                      storesList[index].openNowOrClosed,
                                      style: GoogleFonts.poppins(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    //Time section
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time_filled,
                                          color: Colors.grey[600],
                                        ),
                                        Text(storesList[index].openTime),
                                      ],
                                    ),
                                    //Location Row
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_history,
                                          color: Colors.grey[600],
                                        ),
                                        Text(
                                          storesList[index].distanceAway,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //Rating section
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(storesList[index].rating),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                  0xff3E57B0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShopPage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'View More',
                  style: GoogleFonts.poppins(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
