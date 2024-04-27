import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:share_plus/share_plus.dart';

import '../constant.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  var _trimMode = TrimMode.Line;
  int _trimLines = 3;
  int _trimLength = 240;
  String obj = "Today";
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
          "Events",
          style: GoogleFonts.sofiaSans(
              fontSize: 20, color: textColor, fontWeight: FontWeight.w800),
        ),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: height/37.7,
              ),
              ButtonsTabBar(
                // height: 50,
                backgroundColor: primaryColor,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    child: Container(
                      height:height/16.75,
                      width: width/2.4,
                      child: Padding(
                        padding: EdgeInsets.only(top: height/75.4),
                        child: Text(
                          "Today",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sofiaSans(
                              fontSize: 16,
                              color: obj == "Today"
                                  ? textColor.withOpacity(.7)
                                  : TextColor.withOpacity(.4),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height:height/16.75,
                      width: width/2.4,
                      child: Padding(
                        padding:  EdgeInsets.only(top: height/75.4),
                        child: Text(
                          "Upcomings",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sofiaSans(
                              fontSize: 16,
                              color: obj == "Upcomings"
                                  ? textColor.withOpacity(.7)
                                  : TextColor.withOpacity(.4),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: height/37.7,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width/18,
                              ),
                              Container(
                                 height: height/37.7,
                                width: width/18,
                                child: Image.asset("assets/calender.png"),
                              ),
                              SizedBox(
                                width: width/36,
                              ),
                              Text(
                                "March 27, 2024",
                                style: GoogleFonts.sofiaSans(
                                    fontSize: 16,
                                    color: TextColor.withOpacity(.5),
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                 width: width/5.14,
                              ),
                              Container(
                                 height: height/37.7,
                                width: width/18,
                                child: Image.asset("assets/Time.png"),
                              ),
                              SizedBox(
                                width: width/36,
                              ),
                              Text(
                                "03:30 Pm",
                                style: GoogleFonts.sofiaSans(
                                    fontSize: 16,
                                    color: TextColor.withOpacity(.5),
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          ListTile(
                            leading: Container(
                              width: width/7.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset("assets/birthday.png"),
                            ),
                            title: Text(
                              "Birthday Party",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 20,
                                  color: TextColor,
                                  fontWeight: FontWeight.w800),
                            ),
                            subtitle: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.green,
                                  size: 15,
                                ),
                                Text("Chennai",
                                    style: GoogleFonts.sofiaSans(
                                        fontSize: 12,
                                        color: TextColor.withOpacity(.5),
                                        fontWeight: FontWeight.w800)),
                              ],
                            ),
                            trailing: Container(
                                 height: height/18.85,
                           width: width/3.6,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: height/94.25),
                                child: Text(
                                  "Register",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 16,
                                      color: textColor.withOpacity(.7),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                                height: height/75.4,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width/2.3),
                            child: Text(
                              "Dear Family and Friends,",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 16,
                                  color: TextColor.withOpacity(.5),
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          SizedBox(
                                height: height/75.4,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:EdgeInsets.only(left: width/24),
                                child: Container(
                                width: width/1.16,
                                  child: ReadMoreText(
                                    'We are currently seeking 5 dedicated individuals to join our vibrant team of volunteers. '
                                    'Whether you’re looking to strengthen your faith, connect with your community,'
                                    'or simply share your talents, we have a place for you! ',

                                    trimMode: _trimMode,
                                    trimLines: _trimLines,
                                    trimLength: _trimLength,
                                    //isCollapsed: isCollapsed,
                                    style:
                                        GoogleFonts.sofiaSans(color: TextColor),
                                    colorClickableText: primaryColor,
                                    trimCollapsedText: 'Read more',
                                    trimExpandedText: ' Less',
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: height/15.08),
                                child: InkWell(
                                  onTap: () {
                                    Share.share(
                                        'check out my website https://example.com',
                                        subject: 'Look what I made!');
                                  },
                                  child: Icon(
                                    Icons.share,
                                    color: primaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.grey.withOpacity(.3),
                            endIndent: 10,
                            indent: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width/18,
                              ),
                              Container(
                                 height: height/37.7,
                                width: width/18,
                                child: Image.asset("assets/calender.png"),
                              ),
                              SizedBox(
                                width: width/36,
                              ),
                              Text(
                                "March 27, 2024",
                                style: GoogleFonts.sofiaSans(
                                    fontSize: 16,
                                    color: TextColor.withOpacity(.5),
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                 width: width/5.14,
                              ),
                              Container(
                                 height: height/37.7,
                                width: width/18,
                                child: Image.asset("assets/Time.png"),
                              ),
                              SizedBox(
                                width: width/36,
                              ),
                              Text(
                                "03:30 Pm",
                                style: GoogleFonts.sofiaSans(
                                    fontSize: 16,
                                    color: TextColor.withOpacity(.5),
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          ListTile(
                            leading: Container(
                              width: width/7.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset("assets/birthday.png"),
                            ),
                            title: Text(
                              "Birthday Party",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 20,
                                  color: TextColor,
                                  fontWeight: FontWeight.w800),
                            ),
                            subtitle: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.green,
                                  size: 15,
                                ),
                                Text("Chennai",
                                    style: GoogleFonts.sofiaSans(
                                        fontSize: 12,
                                        color: TextColor.withOpacity(.5),
                                        fontWeight: FontWeight.w800)),
                              ],
                            ),
                            trailing: Container(
                                 height: height/18.85,
                           width: width/3.6,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:  EdgeInsets.only(top: height/94.25),
                                child: Text(
                                  "Register",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 16,
                                      color: textColor.withOpacity(.7),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                                height: height/75.4,
                          ),
                          Padding(
                            padding:EdgeInsets.only(right: width/2.3),
                            child: Text(
                              "Dear Family and Friends,",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 16,
                                  color: TextColor.withOpacity(.5),
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          SizedBox(
                                height: height/75.4,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: width/24),
                                child: Container(
                                width: width/1.16,
                                  child: ReadMoreText(
                                    'We are currently seeking 5 dedicated individuals to join our vibrant team of volunteers. '
                                    'Whether you’re looking to strengthen your faith, connect with your community,'
                                    'or simply share your talents, we have a place for you! ',

                                    trimMode: _trimMode,
                                    trimLines: _trimLines,
                                    trimLength: _trimLength,
                                    //isCollapsed: isCollapsed,
                                    style:
                                        GoogleFonts.sofiaSans(color: TextColor),
                                    colorClickableText: primaryColor,
                                    trimCollapsedText: 'Read more',
                                    trimExpandedText: ' Less',
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: height/15.08),
                                child: InkWell(
                                  onTap: () {
                                    Share.share(
                                        'check out my website https://example.com',
                                        subject: 'Look what I made!');
                                  },
                                  child: Icon(
                                    Icons.share,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey.withOpacity(.3),
                            endIndent: 10,
                            indent: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width/18,
                              ),
                              Container(
                                 height: height/37.7,
                                width: width/18,
                                child: Image.asset("assets/calender.png"),
                              ),
                              SizedBox(
                                width: width/36,
                              ),
                              Text(
                                "March 27, 2024",
                                style: GoogleFonts.sofiaSans(
                                    fontSize: 16,
                                    color: TextColor.withOpacity(.5),
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                 width: width/5.14,
                              ),
                              Container(
                                 height: height/37.7,
                                width: width/18,
                                child: Image.asset("assets/Time.png"),
                              ),
                              SizedBox(
                                width: width/36,
                              ),
                              Text(
                                "03:30 Pm",
                                style: GoogleFonts.sofiaSans(
                                    fontSize: 16,
                                    color: TextColor.withOpacity(.5),
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          ListTile(
                            leading: Container(
                              width: width/7.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset("assets/birthday.png"),
                            ),
                            title: Text(
                              "Birthday Party",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 20,
                                  color: TextColor,
                                  fontWeight: FontWeight.w800),
                            ),
                            subtitle: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.green,
                                  size: 15,
                                ),
                                Text("Chennai",
                                    style: GoogleFonts.sofiaSans(
                                        fontSize: 12,
                                        color: TextColor.withOpacity(.5),
                                        fontWeight: FontWeight.w800)),
                              ],
                            ),
                            trailing: Container(
                                 height: height/18.85,
                           width: width/3.6,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:  EdgeInsets.only(top: height/94.25),
                                child: Text(
                                  "Register",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 16,
                                      color: textColor.withOpacity(.7),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                                height: height/75.4,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width/2.3),
                            child: Text(
                              "Dear Family and Friends,",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 16,
                                  color: TextColor.withOpacity(.5),
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          SizedBox(
                                height: height/75.4,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:EdgeInsets.only(left: width/24),
                                child: Container(
                                width: width/1.16,
                                  child: ReadMoreText(
                                    'We are currently seeking 5 dedicated individuals to join our vibrant team of volunteers. '
                                    'Whether you’re looking to strengthen your faith, connect with your community,'
                                    'or simply share your talents, we have a place for you! ',

                                    trimMode: _trimMode,
                                    trimLines: _trimLines,
                                    trimLength: _trimLength,
                                    //isCollapsed: isCollapsed,
                                    style:
                                        GoogleFonts.sofiaSans(color: TextColor),
                                    colorClickableText: primaryColor,
                                    trimCollapsedText: 'Read more',
                                    trimExpandedText: ' Less',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: height/15.08),
                                child: InkWell(
                                  onTap: () {
                                    Share.share(
                                        'check out my website https://example.com',
                                        subject: 'Look what I made!');
                                  },
                                  child: Icon(
                                    Icons.share,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height/25.13,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: primaryColor.withOpacity(.2),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
