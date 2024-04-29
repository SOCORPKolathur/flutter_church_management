import 'package:flutter/material.dart';
import 'package:flutter_church_management/Views/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';

import '../constant.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: height / 7.54,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width, 0.0)),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: height / 18.85),
              child: Row(
                children: [
                  SizedBox(
                    width: width / 12,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: textColor,
                      )),
                  SizedBox(
                    width: width / 6,
                  ),
                  Text(
                    "Notifications",
                    style: GoogleFonts.sofiaSans(
                        fontSize: 20,
                        color: textColor,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            child: RiveAnimation.asset(
              'assets/fonts/no_data.riv',
              fit: BoxFit.contain,
            ),
          ),
        ]),
      ),
    );
  }
}
