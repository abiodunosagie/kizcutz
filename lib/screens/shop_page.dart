import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kizcutz/screens/profile_page.dart';
import 'package:kizcutz/screens/store_details_page/storeDetails.dart';

import '../model/stores.dart';
import 'homepage.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List<Stores> storesListOne = Stores.getStores();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Select Barber',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color(0xff3E57B0),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: const Icon(
                Icons.home,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: GNav(
        activeColor: const Color(0xff3E57B0),
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
          const GButton(
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                'Select from the list of barbers',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: storesListOne.length,
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StorelistViewDetails(
                                  store: storesListOne[index]),
                            ));
                      },
                      child: Card(
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
                              SizedBox(
                                height: 200,
                                width: 150,
                                child: Image.asset(
                                  storesListOne[index].companyImagePath,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // Company details section
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0, bottom: 15.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //company name
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                storesListOne[index]
                                                    .companyName,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: GoogleFonts.poppins(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            //Rating section
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                ),
                                                Text(storesListOne[index]
                                                    .rating),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      //open now and closed
                                      Text(
                                        storesListOne[index].openNowOrClosed,
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
                                          Text(storesListOne[index].openTime),
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
                                            storesListOne[index].distanceAway,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
