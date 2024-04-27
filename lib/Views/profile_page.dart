import 'package:flutter/material.dart';
import 'package:flutter_church_management/Views/orders.dart';
import 'package:flutter_church_management/Views/personal_details.dart';
import 'package:flutter_church_management/Views/prayer.dart';
import 'package:flutter_church_management/Views/speech.dart';
import 'package:flutter_church_management/Views/testimonials.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class ProfilePage extends StatefulWidget {
   ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          "My Profile",
          style: GoogleFonts.sofiaSans(
            fontWeight: FontWeight.w800,
            color: textColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset("assets/slide.png"),
                ),
                Padding(
                  padding:  EdgeInsets.only(left:width/2.76 , top: height/9.42),
                  child: Container(
                    width: width/3.6,
                    height: height/7.54,
                    decoration: BoxDecoration(
                      color: textColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/Mask group (15).png",
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: width/18,
                ),
                Container(
                  child: Image.asset("assets/Group 90 (1).png"),
                ),
                SizedBox(
                  width: width/36,
                ),
                Column(
                  children: [
                    Text(
                      "Christopher",
                      style: GoogleFonts.sofiaSans(
                          fontWeight: FontWeight.w800,
                          color: TextColor,
                          fontSize: 20),
                    ),
                    Text(
                      "ambed2598@gmail.com",
                      style: GoogleFonts.sofiaSans(
                        fontWeight: FontWeight.w800,
                        color: TextColor.withOpacity(.5),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "+91 9176463821",
                      style: GoogleFonts.sofiaSans(
                        fontWeight: FontWeight.w800,
                        color: TextColor.withOpacity(.5),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: width/36,
                ),
                Container(
                  child: Image.asset("assets/Group 92 (1).png"),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: height/94.25),
                  child: Container(
                    width:width/1.09,
                    child: Image.asset("assets/Group 90.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only( top: height/62.83, left: width/1.56),
                  child: Container(
                    height: height/13.70,
                    child: Image.asset(
                      "assets/Group 36 (1).png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PersonalDetails()));
                  },
                  child: Container(
                    width:width/1.09,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff)),
                    child: ListTile(
                      leading: Padding(
                        padding:  EdgeInsets.only(top: height/150.8),
                        child: Container(
                          height: height/18.85,
                          child: Image.asset("assets/Group 32.png"),
                        ),
                      ),
                      title: Padding(
                        padding:  EdgeInsets.only(left: width/36),
                        child: Text(
                          "Personal & Family",
                          style: GoogleFonts.sofiaSans(
                              fontSize: 16,
                              color: textColor,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      subtitle: Padding(
                        padding:  EdgeInsets.only(left: width/36),
                        child: Text("Your family details here",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 12,
                                color: textColor.withOpacity(.6),
                                fontWeight: FontWeight.w800)),
                      ),
                      trailing: Padding(
                        padding:  EdgeInsets.only(top: height/75.4, left:width/9),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PersonalDetails()));
                          },
                          child: Container(
                            height: height/15.08,
                            width: width/12,
                            decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xffE66A40),
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: height/94.25),
                  child: Container(
                    width:width/1.09,
                    child: Image.asset("assets/Group 91.png"),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only( top: height/62.83, left: width/1.56),
                  child: Container(
                    height: height/13.70,
                    child: Image.asset(
                      "assets/Group 36 (1).png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyPrayer()));
                  },
                  child: Container(
                    width:width/1.09,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff)),
                    child: ListTile(
                      leading: Padding(
                        padding:  EdgeInsets.only(top: height/150.8),
                        child: Container(
                          height: height/18.85,
                          child: Image.asset("assets/Group 32 (1).png"),
                        ),
                      ),
                      title: Padding(
                        padding:  EdgeInsets.only(left: width/36),
                        child: Text(
                          "My Prayer",
                          style: GoogleFonts.sofiaSans(
                              fontSize: 16,
                              color: textColor,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      subtitle: Padding(
                        padding:  EdgeInsets.only(left: width/36),
                        child: Text("Your prayer details here",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 12,
                                color: textColor.withOpacity(.6),
                                fontWeight: FontWeight.w800)),
                      ),
                      trailing: Padding(
                        padding:  EdgeInsets.only(top: height/75.4, left:width/9),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyPrayer()));
                          },
                          child: Container(
                            height: height/15.08,
                          width: width/12,
                            decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff5B93C4),
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: height/94.25),
                  child: Container(
                    width:width/1.09,
                    child: Image.asset("assets/Group 92.png"),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only( top: height/62.83, left: width/1.56),
                  child: Container(
                    height: height/13.70,
                    child: Image.asset(
                      "assets/Group 36 (1).png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SpeechScreen()));
                  },
                  child: Container(
                    width:width/1.09,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                       ),
                    child: ListTile(
                      leading: Padding(
                        padding:  EdgeInsets.only(top: height/150.8),
                        child: Container(
                          height: height/18.85,
                          child: Image.asset("assets/Group 31.png"),
                        ),
                      ),
                      title: Padding(
                        padding:  EdgeInsets.only(left: width/36),
                        child: Text(
                          "My Speech",
                          style: GoogleFonts.sofiaSans(
                              fontSize: 16,
                              color: textColor,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      subtitle: Padding(
                        padding:  EdgeInsets.only(left: width/36),
                        child: Text("Your speech details here",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 12,
                                color: textColor.withOpacity(.6),
                                fontWeight: FontWeight.w800)),
                      ),
                      trailing: Padding(
                        padding:  EdgeInsets.only(top: height/75.4, left:width/9),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SpeechScreen()));
                          },
                          child: Container(
                            height: height/15.08,
                          width: width/12,
                            decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff45B182),
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: height/94.25),
                  child: Container(
                    width:width/1.09,
                    child: Image.asset("assets/Group 93.png"),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only( top: height/62.83, left: width/1.56),
                  child: Container(
                    height: height/13.70,
                    child: Image.asset(
                      "assets/Group 36 (1).png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OrdersScreen()));
                  },
                  child: Container(
                    width:width/1.09,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff)),
                    child: ListTile(
                      leading: Padding(
                        padding:  EdgeInsets.only(top: height/150.8),
                        child: Container(
                          height: height/18.85,
                          child: Image.asset("assets/Group 31 (1).png"),
                        ),
                      ),
                      title: Padding(
                        padding:  EdgeInsets.only(left: width/36),
                        child: Text(
                          "My Orders",
                          style: GoogleFonts.sofiaSans(
                              fontSize: 16,
                              color: textColor,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      subtitle: Padding(
                        padding:  EdgeInsets.only(left: width/36),
                        child: Text("Your family details here",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 12,
                                color: textColor.withOpacity(.6),
                                fontWeight: FontWeight.w800)),
                      ),
                      trailing: Padding(
                        padding:  EdgeInsets.only(top: height/75.4, left:width/9),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => OrdersScreen()));
                          },
                          child: Container(
                            height: height/15.08,
                          width: width/12,
                            decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xffDBBD13),
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: height/94.25),
                  child: Container(
                    width:width/1.09,
                    child: Image.asset("assets/Group 94.png"),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only( top: height/62.83, left: width/1.56),
                  child: Container(
                    height: height/13.70,
                    child: Image.asset(
                      "assets/Group 36 (1).png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Testimonials()));
                  },
                  child: Container(
                    width:width/1.09,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                       ),
                    child: ListTile(
                      leading: Padding(
                        padding:  EdgeInsets.only(top: height/150.8),
                        child: Container(
                          height: height/18.85,
                          child: Image.asset("assets/Group 32 (2).png"),
                        ),
                      ),
                      title: Padding(
                        padding:  EdgeInsets.only(left: width/36),
                        child: Text(
                          "Testimonials",
                          style: GoogleFonts.sofiaSans(
                              fontSize: 16,
                              color: textColor,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      subtitle: Padding(
                        padding:  EdgeInsets.only(left: width/36),
                        child: Text("Your speech details here",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 12,
                                color: textColor.withOpacity(.6),
                                fontWeight: FontWeight.w800)),
                      ),
                      trailing: Padding(
                        padding:  EdgeInsets.only(top: height/75.4, left:width/9),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Testimonials()));
                          },
                          child: Container(
                            height: height/15.08,
                          width: width/12,
                            decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xffE14560),
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height/37.7,
            )
          ],
        ),
      ),
    );
  }
}
