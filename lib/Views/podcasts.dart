import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class Podcasts extends StatefulWidget {
  const Podcasts({super.key});

  @override
  State<Podcasts> createState() => _PodcastsState();
}

class _PodcastsState extends State<Podcasts> {
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
          "Podcasts",
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
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: height / 37.7, left: width / 36),
                          child: Container(
                            child: Image.asset("assets/podcast1.png"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width / 18, top: height / 4.71),
                          child: Text(
                            "Focus on Art",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 18,
                                color: textColor,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width / 18, top: height / 4.18),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer_sharp,
                                size: 12,
                                color: textColor,
                              ),
                              Text(
                                "15 mins of listening",
                                style: GoogleFonts.sofiaSans(
                                    fontSize: 12,
                                    color: textColor.withOpacity(.6),
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width / 1.28, top: height / 5.3),
                          child: Icon(
                            Icons.play_circle,
                            size: 60,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: height / 37.7, left: width / 36),
                          child: Container(
                            child: Image.asset("assets/podcast2.png"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width / 18, top: height / 4.71),
                          child: Text(
                            "Focus on Art",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 18,
                                color: textColor,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width / 18, top: height / 4.18),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer_sharp,
                                size: 12,
                                color: textColor,
                              ),
                              Text(
                                "15 mins of listening",
                                style: GoogleFonts.sofiaSans(
                                    fontSize: 12,
                                    color: textColor.withOpacity(.6),
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width / 1.28, top: height / 5.3),
                          child: Icon(
                            Icons.play_circle,
                            size: 60,
                            color: textColor,
                          ),
                        ),
                      ],
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
