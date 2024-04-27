import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class MyPrayer extends StatefulWidget {
  const MyPrayer({super.key});

  @override
  State<MyPrayer> createState() => _MyPrayerState();
}

class _MyPrayerState extends State<MyPrayer> {
  _showAlertDialogOne() {
    return showDialog<void>(
      context: context,

      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        double height = MediaQuery.of(context).size.height;
        double width = MediaQuery.of(context).size.width;
        return AlertDialog(
          backgroundColor: Color(0xffFFFFFF),
          insetPadding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          surfaceTintColor: Colors.transparent,
          title: Text(
            'Send Prayer Request',
            style: GoogleFonts.sofiaSans(
              color: TextColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: height/15.08,
                      child: Image.asset("assets/Requirement.png"),
                    ),
                    Text(
                      "Reason :",
                      style: GoogleFonts.sofiaSans(
                        color: TextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: width/1.56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: TextColor,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
                        hintStyle: GoogleFonts.sofiaSans(
                            color: Color(0xff262626).withOpacity(.3))),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: height/18.85,
                      child: Image.asset("assets/Playlist.png"),
                    ),
                    Text(
                      "Description :",
                      style: GoogleFonts.sofiaSans(
                        color: TextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: width/1.56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: TextColor,
                    ),
                  ),
                  child: TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
                        hintStyle: GoogleFonts.sofiaSans(
                            color: Color(0xff262626).withOpacity(.3))),
                  ),
                ),
                SizedBox(
                  height: height/37.7,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height:height/18.85,
                        width: width/2.76,
                        decoration: BoxDecoration(
                            color: Color(0xffFF2020),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding:  EdgeInsets.only(top: height/94.25),
                          child: Text(
                            'Cancel',
                            style: GoogleFonts.sofiaSans(
                              color: textColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width/36,
                    ),
                    Container(
                      height:height/18.85,
                      width: width/2.76,
                      decoration: BoxDecoration(
                          color: Color(0xff00A05A),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding:  EdgeInsets.only(top: height/94.25),
                        child: Text(
                          'Submit',
                          style: GoogleFonts.sofiaSans(
                            color: textColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

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
              color: textColor,
            )),
        title: Text(
          "My Prayer",
          style: GoogleFonts.sofiaSans(
              fontSize: 20, color: textColor, fontWeight: FontWeight.w800),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: width/36),
            child: Container(
              height: height/18.85,
              width: width/3.87,
              decoration: BoxDecoration(
                color: textColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width/36),
                    child: Text(
                      "Add",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sofiaSans(
                          fontSize: 20,
                          color: primaryColor,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        _showAlertDialogOne();
                      },
                      icon: Icon(
                        Icons.add,
                        size: 25,
                        color: primaryColor,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(right: width/1.5, top: height/37.7),
            child: Text(
              "Prayer 1",
              style: GoogleFonts.sofiaSans(
                  fontSize: 20, color: TextColor, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: width/2.25, top: height/75.4),
            child: Text(
              "Dear Heavenly Father",
              style: GoogleFonts.sofiaSans(
                  fontSize: 16,
                  color: TextColor.withOpacity(.6),
                  fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width/24, top: height/37.7),
            child: Container(
              width: width/1.09,
              child: Text(
                "We humbly come before you with our hearts open, seeking your grace and mercy."
                    " We lift up to you all those who are in need of your comfort, healing, and guidance. ",
                textAlign: TextAlign.start,
                style: GoogleFonts.sofiaSans(
                    fontSize: 16,
                    color: TextColor.withOpacity(.6),
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: width/36,
              ),
              Container(
                height: height/18.85,
                child: Image.asset("assets/Loading (1).png"),
              ),
              Text("status"),
              SizedBox(
                width: width/6,
              ),
              Text(":"),
              SizedBox(
                width: width/4,
              ),
              Container(
                height: height/30.16,
                width: width/3.6,
                decoration: BoxDecoration(
                    color: Color(0xff00A15B).withOpacity(.2),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(top: height/377),
                  child: Text(
                    "Approved",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sofiaSans(
                        fontSize: 14,
                        color: Color(0xff00A15B),
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(left: width/7.2),
            child: Text(
              "You request by 03:30 Pm , March 27, 2024",
              style: GoogleFonts.sofiaSans(
                  fontSize: 14,
                  color: TextColor.withOpacity(.4),
                  fontWeight: FontWeight.w800),
            ),
          ),
          Divider(
            color: TextColor.withOpacity(.1),
            endIndent: 10,
            indent: 10,
          ),
          Padding(
            padding:  EdgeInsets.only(right: width/1.5, top:height/ 37.7),
            child: Text(
              "Prayer 2",
              style: GoogleFonts.sofiaSans(
                  fontSize: 20, color: TextColor, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: width/2.25, top: height/75.4),
            child: Text(
              "Dear Heavenly Father",
              style: GoogleFonts.sofiaSans(
                  fontSize: 16,
                  color: TextColor.withOpacity(.6),
                  fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: width/24, top: height/37.7),
            child: Container(
              width: width/1.09,
              child: Text(
                "We humbly come before you with our hearts open, seeking your grace and mercy."
                    " We lift up to you all those who are in need of your comfort, healing, and guidance.",
                textAlign: TextAlign.start,
                style: GoogleFonts.sofiaSans(
                    fontSize: 16,
                    color: TextColor.withOpacity(.6),
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: width/36,
              ),
              Container(
                height: height/18.85,
                child: Image.asset("assets/Loading (1).png"),
              ),
              Text("status"),
              SizedBox(
                width: width/6,
              ),
              Text(":"),
              SizedBox(
                width: width/4,
              ),
              Container(
                height: height/30.16,
                width: width/3.6,
                decoration: BoxDecoration(
                    color: Color(0xffFF7345).withOpacity(.2),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(top: height/377),
                  child: Text(
                    "Pending",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sofiaSans(
                        fontSize: 14,
                        color: Color(0xffFF7345),
                        fontWeight: FontWeight.w800),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(left: width/7.2),
            child: Text(
              "You request by 03:30 Pm , March 27, 2024",
              style: GoogleFonts.sofiaSans(
                  fontSize: 14,
                  color: TextColor.withOpacity(.4),
                  fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}
