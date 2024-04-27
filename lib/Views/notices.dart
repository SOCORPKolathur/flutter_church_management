import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../constant.dart';

class Notices extends StatefulWidget {
  const Notices({super.key});

  @override
  State<Notices> createState() => _NoticesState();
}

class _NoticesState extends State<Notices> {
  String obj = "Recent";
  var _trimMode = TrimMode.Line;
  int _trimLines = 3;
  int _trimLength = 240;
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
          "Notices",
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
                height: height / 37.7,
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
                      height: height / 16.75,
                      width: width / 2.4,
                      child: Padding(
                        padding: EdgeInsets.only(top: height / 75.4),
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
                      height: height / 16.75,
                      width: width / 2.4,
                      child: Padding(
                        padding: EdgeInsets.only(top: height / 75.4),
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
                            height: height / 37.7,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width / 2),
                            child: Text(
                              "Volunteer Need",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 20,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width / 18),
                            child: ReadMoreText(
                              'We are currently seeking 5 dedicated individuals to join our vibrant team of volunteers. '
                              'Whether you’re looking to strengthen your faith, connect with your community, '
                              'or simply share your talents, we have a place for you! ',
                              trimMode: _trimMode,
                              trimLines: _trimLines,
                              trimLength: _trimLength,
                              //isCollapsed: isCollapsed,
                              style: GoogleFonts.sofiaSans(color: TextColor),
                              colorClickableText: primaryColor,
                              trimCollapsedText: 'Read more',
                              trimExpandedText: ' Less',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width / 3.6, top: height / 75.4),
                            child: Text(
                              "Post by 03:30 Pm,March 27, 2024",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: Color(0xFF262626).withOpacity(.7),
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Divider(
                            color: Color(0xFF262626).withOpacity(.2),
                            endIndent: 15,
                            indent: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width / 2),
                            child: Text(
                              "Volunteer Need",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 20,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width / 18),
                            child: ReadMoreText(
                              'We are currently seeking 5 dedicated individuals to join our vibrant team of volunteers. '
                              'Whether you’re looking to strengthen your faith, connect with your community, '
                              'or simply share your talents, we have a place for you! ',
                              trimMode: _trimMode,
                              trimLines: _trimLines,
                              trimLength: _trimLength,
                              //isCollapsed: isCollapsed,
                              style: GoogleFonts.sofiaSans(color: TextColor),
                              colorClickableText: primaryColor,
                              trimCollapsedText: 'Read more',
                              trimExpandedText: ' Less',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width / 3.6, top: height / 75.4),
                            child: Text(
                              "Post by 03:30 Pm,March 27, 2024",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: Color(0xFF262626).withOpacity(.7),
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Divider(
                            color: Color(0xFF262626).withOpacity(.2),
                            endIndent: 15,
                            indent: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width / 2),
                            child: Text(
                              "Volunteer Need",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 20,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width / 18),
                            child: ReadMoreText(
                              'We are currently seeking 5 dedicated individuals to join our vibrant team of volunteers. '
                              'Whether you’re looking to strengthen your faith, connect with your community, '
                              'or simply share your talents, we have a place for you! ',
                              trimMode: _trimMode,
                              trimLines: _trimLines,
                              trimLength: _trimLength,
                              //isCollapsed: isCollapsed,
                              style: GoogleFonts.sofiaSans(color: TextColor),
                              colorClickableText: primaryColor,
                              trimCollapsedText: 'Read more',
                              trimExpandedText: ' Less',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width / 3.6, top: height / 75.4),
                            child: Text(
                              "Post by 03:30 Pm,March 27, 2024",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: Color(0xFF262626).withOpacity(.7),
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Divider(
                            color: Color(0xFF262626).withOpacity(.2),
                            endIndent: 15,
                            indent: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width / 2),
                            child: Text(
                              "Volunteer Need",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 20,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width / 18),
                            child: ReadMoreText(
                              'We are currently seeking 5 dedicated individuals to join our vibrant team of volunteers. '
                              'Whether you’re looking to strengthen your faith, connect with your community, '
                              'or simply share your talents, we have a place for you! ',
                              trimMode: _trimMode,
                              trimLines: _trimLines,
                              trimLength: _trimLength,
                              //isCollapsed: isCollapsed,
                              style: GoogleFonts.sofiaSans(color: TextColor),
                              colorClickableText: primaryColor,
                              trimCollapsedText: 'Read more',
                              trimExpandedText: ' Less',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width / 3.6, top: height / 75.4),
                            child: Text(
                              "Post by 03:30 Pm,March 27, 2024",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: Color(0xFF262626).withOpacity(.7),
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Divider(
                            color: Color(0xFF262626).withOpacity(.2),
                            endIndent: 15,
                            indent: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width / 2),
                            child: Text(
                              "Volunteer Need",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 20,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width / 18),
                            child: ReadMoreText(
                              'We are currently seeking 5 dedicated individuals to join our vibrant team of volunteers. '
                              'Whether you’re looking to strengthen your faith, connect with your community, '
                              'or simply share your talents, we have a place for you! ',
                              trimMode: _trimMode,
                              trimLines: _trimLines,
                              trimLength: _trimLength,
                              //isCollapsed: isCollapsed,
                              style: GoogleFonts.sofiaSans(color: TextColor),
                              colorClickableText: primaryColor,
                              trimCollapsedText: 'Read more',
                              trimExpandedText: ' Less',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width / 3.6, top: height / 75.4),
                            child: Text(
                              "Post by 03:30 Pm,March 27, 2024",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: Color(0xFF262626).withOpacity(.7),
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          SizedBox(
                            height: height / 25.13,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: primaryColor.withOpacity(.2),
                    ),
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
