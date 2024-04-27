import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_church_management/Views/sign_in_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => SignInPage())));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height / 25.13),
              child: SizedBox(
                height: height / 2.15,
                child: Image.asset("assets/cross1.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width / 1.8, top: height / 1.47),
              child: SizedBox(
                height: height / 3.01,
                child: Image.asset("assets/cross2.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width / 3.6, top: height / 2.35),
              child: Stack(
                children: [
                  SizedBox(
                    width: width / 2.11,
                    child: Image.asset("assets/white_vector.png"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width / 12, top: height / 37.7),
                    child: SizedBox(
                      width: width / 3.6,
                      child: Image.asset("assets/holy_church.png"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 1.6, left: width / 4),
              child: Text(
                "IKIA CHURCH",
                style: GoogleFonts.sofiaSans(
                  color: textColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
