import 'package:flutter/material.dart';
import 'package:flutter_church_management/Views/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                        "Languages",
                        style: GoogleFonts.sofiaSans(
                            fontSize: 20,
                            color: textColor,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 25.13),
                child: Text(
                  'Choose your language',
                  style: GoogleFonts.sofiaSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 75.4),
                child: Text(
                  'Pick the language you understand best',
                  style: GoogleFonts.sofiaSans(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 25.13, left: width / 12),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => RolePageScreen()));
                      },
                      child: Container(
                        width: width / 2.61,
                        height: height / 5.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff18353F),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: height/37.7),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/tamil.png'),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: height/75.4),
                              child: Text('தமிழ்',
                                  style: GoogleFonts.notoSansTamil(
                                      color: primaryColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Text('Tamil',
                                style: GoogleFonts.sofiaSans(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 19.6,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => RolePageScreen()));
                      },
                      child: Container(
                        width: width / 2.61,
                        height: height / 5.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff18353F),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:EdgeInsets.only(top: height/37.7),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage('assets/eng.png'),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: height/75.4),
                              child: Text('English',
                                  style: GoogleFonts.sofiaSans(
                                      color: primaryColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Text('USK/UK',
                                style: GoogleFonts.sofiaSans(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 25.13, left: width / 12),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => RolePageScreen()));
                      },
                      child: Container(
                        width: width / 2.61,
                        height: height / 5.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff18353F),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: height/37.7),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/hindi_img.png'),
                              ),
                            ),
                            Padding(
                              padding:EdgeInsets.only(top: height/25.13),
                              child: Text('Hindi',
                                  style: GoogleFonts.sofiaSans(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 19.6,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => RolePageScreen()));
                      },
                      child: Container(
                        width: width / 2.61,
                        height: height / 5.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff18353F),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: height/37.7),
                              child: CircleAvatar(
                                backgroundColor: Color(0xffFFFFFF),
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/malayalam.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: height/75.4),
                              child: Text('മലയാളം',
                                  style: GoogleFonts.notoSansMalayalam(
                                      color: primaryColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Text('Malayalam',
                                style: GoogleFonts.sofiaSans(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 25.13, left: width / 12),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => RolePageScreen()));
                      },
                      child: Container(
                        width: width / 2.61,
                        height: height / 5.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff18353F),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: height/37.7),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(30),
                                  child: Image(
                                    image: AssetImage('assets/kannada_img.png'),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: height/75.4),
                              child: Text('ಕನ್ನಡ',
                                  style: GoogleFonts.notoSansKannada(
                                      color: primaryColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Text('Kannada',
                                style: GoogleFonts.sofiaSans(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 19.6,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => RolePageScreen()));
                      },
                      child: Container(
                        width: width / 2.61,
                        height: height / 5.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff18353F),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: height/37.7),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/telungu.png'),
                              ),
                            ),
                            Padding(
                              padding:EdgeInsets.only(top: height/75.4),
                              child: Text('తెలుంగు',
                                  style: GoogleFonts.notoSansTelugu(
                                      color: primaryColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Text('Telungu',
                                style: GoogleFonts.sofiaSans(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 25.13, left: width / 12),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => RolePageScreen()));
                      },
                      child: Container(
                        width: width / 2.61,
                        height: height / 5.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff18353F),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: height/37.7),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/gujarath.png'),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: height/75.4),
                              child: Text('ગુજરાત்',
                                  style: GoogleFonts.notoSansGujarati(
                                      color: primaryColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Text('Gujarati',
                                style: GoogleFonts.sofiaSans(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: width / 19.6),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => RolePageScreen()));
                      },
                      child: Container(
                        width: width / 2.61,
                        height: height / 5.06,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff18353F),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: height/37.7),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(30),
                                  child: Image(
                                    image: AssetImage('assets/urdu.png'),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: height/75.4),
                              child: Text('اردو',
                                  style: GoogleFonts.notoSansUgaritic(
                                      color: primaryColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ),
                            Text('Urdu',
                                style: GoogleFonts.sofiaSans(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 25.3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
