import 'package:flutter/material.dart';
import 'package:flutter_church_management/Views/profile_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: textColor,
            )),
        title: Text(
          "Personal & Family",
          style: GoogleFonts.sofiaSans(
              fontSize: 20, color: textColor, fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: width / 2.4, top: height / 37.7),
              child: Text(
                "Personal Details",
                style: GoogleFonts.sofiaSans(
                    fontSize: 20,
                    color: TextColor,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Container(
                    height: height / 25.13,
                    child: Image.asset("assets/Badge.png"),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Full Name",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 5.53,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9,
                  ),
                  Text(
                    "John Doe",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Container(
                    height: height / 25.13,
                    child: Image.asset("assets/Business.png"),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Profession",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 6,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9,
                  ),
                  Text(
                    "Developer",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Container(
                    height: height / 25.13,
                    child: Image.asset("assets/Wedding Rings.png"),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Marital Status",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 10.28,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9,
                  ),
                  Text(
                    "Single",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Container(
                    height: height / 25.13,
                    child: Image.asset("assets/Home Address.png"),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Locality",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 4.5,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9,
                  ),
                  Text(
                    "Chennai",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 14.4,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 20,
                  ),
                  SizedBox(
                    width: width / 24,
                  ),
                  Text(
                    "Address",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 4.5,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9,
                  ),
                  Text(
                    "No 120/2,\nKolathur.",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height / 18.85,
              width: width / 1.12,
              child: Divider(
                color: TextColor.withOpacity(.1),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width/2, top: height / 75.4),
              child: Text(
                "Family Details",
                style: GoogleFonts.sofiaSans(
                    fontSize: 20,
                    color: TextColor,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Container(
                    height: height / 25.13,
                    child: Image.asset("assets/Business.png"),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Family ID",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 5.53,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9,
                  ),
                  Text(
                    "IKIA0000015",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Container(
                    height: height / 25.13,
                    child: Image.asset("assets/Family.png"),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Family Name",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9,
                  ),
                  Text(
                    "Sathish",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Container(
                    height: height / 25.13,
                    child: Image.asset("assets/Leader.png"),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Leader Name",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9,
                  ),
                  Text(
                    "Sathish",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Container(
                    height: height / 25.13,
                    child: Image.asset("assets/Home Address.png"),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Contact Number",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 24,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9.47,
                  ),
                  Text(
                    "Chennai",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Container(
                    height: height / 18.85,
                    child: Image.asset("assets/Group 32.png"),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Family Member\nCount",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 13.84,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9.47,
                  ),
                  Text(
                    "05",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 20,
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Address",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 4,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9.47,
                  ),
                  Text(
                    "No 120/2,\nKolathur.",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Container(
                    height: height / 25.13,
                    child: Image.asset("assets/Locationicon.png"),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "City",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 3.27,
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9.47,
                  ),
                  Text(
                    "Chennai",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 75.4),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 18,
                  ),
                  Container(
                    height: height / 25.13,
                    child: Image.asset("assets/Pin Pad.png"),
                  ),
                  SizedBox(
                    width: width / 36,
                  ),
                  Text(
                    "Pincode",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(width: width / 4.23),
                  Text(
                    ":",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: width / 9.47,
                  ),
                  Text(
                    "600001",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                        color: TextColor.withOpacity(.7),
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height / 18.85,
            ),
          ],
        ),
      ),
    );
  }
}
