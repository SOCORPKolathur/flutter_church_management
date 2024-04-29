import 'package:flutter/material.dart';
import 'package:flutter_church_management/Views/otp_page.dart';
import 'package:flutter_church_management/Views/register_screen.dart';
import 'package:flutter_church_management/Views/sign_in_page.dart';
import 'package:flutterotpfield/flutterotpfield.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';
import 'home_page.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Image.asset("assets/vec1.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height / 12.56),
                      child: Container(
                        child: Image.asset("assets/frame1.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 25.13,
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Text(
                    "Verifiy Mobile Number",
                    style: GoogleFonts.openSans(
                        color: Color(0xff006BA6),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width / 36),
                  child: Text(
                    "We have you sent to SMS with 6 digit\nverification code (OTP) on",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                        color: Color(0xff262626).withOpacity(.3),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "+91 8345568345",
                  style: GoogleFonts.openSans(
                      color: Color(0xff262626),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height / 25.13,
                ),
                FlutterOtpField(
                  inputFieldLength: 6,
                  spaceBetweenFields: 5,
                  inputDecoration: InputDecoration(
                      constraints: const BoxConstraints(maxHeight: 20),
                      fillColor: Colors.transparent,
                      filled: true,
                      hintText: " ",
                      counterText: "",
                      hintStyle: GoogleFonts.openSans(
                          color: Color(0xff656565),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff006BA6), width: 2.0),
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff006BA6), width: 2.0),
                          borderRadius: BorderRadius.circular(30))),
                  onValueChange: (String value) {
                    print("otp changed $value");
                  },
                  onCompleted: (String value) {
                    setState(() {});
                    print("otp  $value");
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: height / 37.7),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                      height: height / 18.85,
                      width: width / 1.2,
                      decoration: BoxDecoration(
                          color: Color(0xff006BA6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.only(top: height/94.25),
                        child: Text(
                          "Verify Code",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sofiaSans(
                            fontSize: 20,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 1.34),
              child: Container(
                child: Image.asset("assets/vec3.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 1.09, left: width / 7.2),
              child: Container(
                height: height / 12.56,
                child: Opacity(
                    opacity: 0.30, child: Image.asset("assets/cross3.png")),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 1.16, left: width / 2.76),
              child: Container(
                height: height / 7.54,
                child: Opacity(
                    opacity: .30, child: Image.asset("assets/cross3.png")),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 1.25, left: width / 1.56),
              child: Container(
                height: height / 5.02,
                child: Opacity(
                    opacity: 0.30, child: Image.asset("assets/cross3.png")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
