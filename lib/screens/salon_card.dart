/*
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SalonCard extends StatelessWidget {
  SalonCard(
      {Key? key,
      required this.companyName,
      required this.companyImagePath,
      required this.openTime,
      required this.distanceAway,
      required this.rating,
      required this.openNowOrClosed,
      // this.images})
      : super(key: key);

  final String companyName;
  final String companyImagePath;
  final String openTime;
  final String distanceAway;
  final String rating;
  final String openNowOrClosed;
  List<String>? images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 200,
                child: Image.asset(companyImagePath),
              ),
            ),
            // Company details section
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //company name
                Text(
                  companyName,
                  style: GoogleFonts.poppins(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                //open now and closed
                Text(
                  openNowOrClosed,
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
                    Text(openTime.toString()),
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
                      distanceAway.toString(),
                    ),
                  ],
                ),
              ],
            ),
            //Rating section
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(rating),
              ],
            )
          ],
        ),
      ),
    );
  }
}
*/
