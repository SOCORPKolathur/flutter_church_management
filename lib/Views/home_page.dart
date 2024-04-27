import 'dart:async';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_church_management/Views/Blogs.dart';
import 'package:flutter_church_management/Views/about_church.dart';
import 'package:flutter_church_management/Views/community.dart';
import 'package:flutter_church_management/Views/connect.dart';
import 'package:flutter_church_management/Views/events.dart';
import 'package:flutter_church_management/Views/notices.dart';
import 'package:flutter_church_management/Views/notifications.dart';
import 'package:flutter_church_management/Views/podcasts.dart';
import 'package:flutter_church_management/Views/product_page.dart';
import 'package:flutter_church_management/Views/profile_page.dart';
import 'package:flutter_church_management/Views/social_media.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';
import 'language_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller07 = ValueNotifier<bool>(false);
  int _currentIndex = 0;
  late final PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: _currentIndex);

    super.initState();

    Timer.periodic(Duration(minutes: 1), (timer) {
      _updateGreeting();
    });
  }

  String greeting = 'Good Morning';

  void _updateGreeting() {
    DateTime now = DateTime.now();
    if (now.hour < 12) {
      setState(() {
        greeting = 'Good Morning!';
      });
    } else if (now.hour < 18) {
      setState(() {
        greeting = 'Good Afternoon!';
      });
    } else {
      setState(() {
        greeting = 'Good Evening!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff006BA6),
      body: PageView(
        controller: _pageController,
        onPageChanged: (val) {
          setState(() {
            _currentIndex = val;
            _pageController.animateToPage(_currentIndex,
                duration: Duration(milliseconds: 300), curve: Curves.linear);
          });
        },
        children: [
          SafeArea(
            child: Container(
              color: textColor,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            print(width);
                            print(height);
                          },
                          child: Container(
                            height: height / 6.28,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/image1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              height: height / 3.60,
                              color: primaryColor.withOpacity(.72),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width / 1.24, top: height / 75.4),
                          child: PopupMenuButton<int>(
                            color: Colors.white,
                            shadowColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            surfaceTintColor: Colors.transparent,
                            position: PopupMenuPosition.under,
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                  value: 1,
                                  child: Text(
                                    "Language",
                                    style: GoogleFonts.sofiaSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  )),
                              PopupMenuItem(
                                  value: 2,
                                  child: Text(
                                    "About Church",
                                    style: GoogleFonts.sofiaSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  )),
                              PopupMenuItem(
                                  value: 3,
                                  child: Text(
                                    "Social Medias",
                                    style: GoogleFonts.sofiaSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  )),
                              PopupMenuItem(
                                  value: 4,
                                  child: Text(
                                    "Contact Admin",
                                    style: GoogleFonts.sofiaSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  )),
                              PopupMenuItem(
                                  value: 5,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Privacy",
                                        style: GoogleFonts.sofiaSans(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: width / 18 ),
                                        child: AdvancedSwitch(
                                          activeColor: primaryColor,
                                          width: width/7.2,
                                          height: height/30.16,
                                          controller: controller07,
                                        ),
                                      ),
                                    ],
                                  )),
                              PopupMenuItem(
                                  value: 6,
                                  child: Text(
                                    "Log Out",
                                    style: GoogleFonts.sofiaSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  )),
                            ],
                            icon: Icon(
                              Icons.settings,
                              size: 30,
                              color: textColor,
                            ),
                            onSelected: (value) {
                              if (value == 1) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => LanguageScreen()));
                              }
                              if (value == 2) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => AboutChurch()));
                              }
                              if (value == 3) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SocialMedia()));
                              }
                              if (value == 4) {
                                _showAlertDialogOne();
                              }
                              if (value == 5) {}
                              if (value == 6) {
                                _showAlertDialog();
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width / 1.38, top: height / 37.7),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Notifications()));
                            },
                            child: Icon(
                              Icons.notifications,
                              size: 30,
                              color: textColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width / 24, top: height / 37.7),
                          child: Text(
                            greeting,
                            style: GoogleFonts.sofiaSans(
                              color: textColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width / 36, top: height / 15.08),
                          child: Container(
                            height: height / 18.85,
                            width: width / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: textColor.withOpacity(.2),
                            ),
                            child: Text(
                              "Christopher",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.sofiaSans(
                                color: textColor,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    ImageSlideshow(
                      height: height/4.18,
                      indicatorRadius: 4,
                      onPageChanged: (value) {
                        debugPrint('Page changed: $value');
                      },
                      autoPlayInterval: 3000,
                      isLoop: true,
                      children: [
                        Image.asset(
                          'assets/slider.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/slider.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/slider.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/slider.png',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: width / 2, top: height / 150.8),
                      child: Text(
                        "Quick Access",
                        style: GoogleFonts.sofiaSans(
                          color: TextColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width / 24),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Notices()));
                            },
                            child: Stack(
                              children: [
                                Container(
                                    width: width / 2.25,
                                    child: Image.asset(
                                      'assets/yellow.png',
                                      fit: BoxFit.contain,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: height / 10.77, left: width / 36),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(right: width / 12),
                                        child: Text(
                                          "Notices",
                                          style: GoogleFonts.sofiaSans(
                                            color: textColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "10 Notices For You",
                                        style: GoogleFonts.sofiaSans(
                                          color: textColor,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width / 3.13, top: height / 10.77),
                                  child: Container(
                                      height: height / 25.13,
                                      width: width / 12,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: textColor,
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width / 72, top: height / 75.4),
                                  child: Container(
                                    width: width / 6,
                                    child: Image.asset("assets/notice.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width / 36,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EventsScreen()));
                          },
                          child: Stack(
                            children: [
                              Container(
                                  width: width / 2.25,
                                  child: Image.asset(
                                    'assets/red.png',
                                    fit: BoxFit.contain,
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: height / 10.77, left: width / 36),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: width / 9),
                                      child: Text(
                                        "Events",
                                        style: GoogleFonts.sofiaSans(
                                          color: textColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "34 Events Available",
                                      style: GoogleFonts.sofiaSans(
                                        color: textColor,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: width / 3.13, top: height / 10.77),
                                child: Container(
                                  height: height / 25.13,
                                  width: width / 12,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: textColor,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: width / 72, top: height / 75.4),
                                child: Container(
                                  width: width / 6,
                                  child: Image.asset("assets/event.png"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: height / 50.26, left: width / 24),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Blogs()));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: height / 5.8,
                                  width: width / 2.25,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/green.png'),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: height / 10.77, right: width / 18),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(right: width / 8),
                                          child: Text(
                                            "Blogs",
                                            style: GoogleFonts.sofiaSans(
                                              color: textColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "18 Blogs Available",
                                          style: GoogleFonts.sofiaSans(
                                            color: textColor,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width / 3.13, top: height / 10.77),
                                  child: Container(
                                    height: height / 25.13,
                                    width: width / 12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: textColor,
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width / 72, top: height / 75.4),
                                  child: Container(
                                    width: width / 6,
                                    child: Image.asset("assets/blog.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width / 36,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height / 50.26),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Podcasts()));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: height / 5.8,
                                  width: width / 2.25,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/blue.png'),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: height / 10.77,
                                        right: width / 14.4),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: width / 18),
                                          child: Text(
                                            "Podcasts",
                                            style: GoogleFonts.sofiaSans(
                                              color: textColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "26 Audios & Videos",
                                          style: GoogleFonts.sofiaSans(
                                            color: textColor,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width / 3, top: height / 10.77),
                                  child: Container(
                                    height: height / 25.13,
                                    width: width / 12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: textColor,
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width / 45, top: height / 75.4),
                                  child: Container(
                                    width: width / 6,
                                    child: Image.asset("assets/podcast.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height/37.7,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ConnectPage(),
          ProductPage(),
          CommunityPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        // itemCornerRadius: 24,
        curve: Curves.easeIn,
        //animationDuration: ,
        containerHeight: 70,

        onItemSelected: (index) {
          print("Page - $index");
          setState(() => _currentIndex = index);
          print("Page2 - $_currentIndex");
          _pageController.animateToPage(_currentIndex,
              duration: Duration(milliseconds: 150), curve: Curves.easeIn);
        },

        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            backgroundColor: primaryColor,
            icon: Icon(Icons.home),
            title: Text(
              'Home',
              style: GoogleFonts.sofiaSans(
                  color: textColor, fontSize: 16, fontWeight: FontWeight.w700),
            ),
            inactiveColor: Color(0xff262626).withOpacity(.3),
            activeColor: textColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message_rounded),
            title: Text(
              'Connect',
              style: GoogleFonts.sofiaSans(
                  color: textColor, fontSize: 15, fontWeight: FontWeight.w700),
            ),
            inactiveColor: Color(0xff262626).withOpacity(.3),
            activeColor: textColor,
            backgroundColor: primaryColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text(
              'Product',
              style: GoogleFonts.sofiaSans(
                  color: textColor, fontSize: 15, fontWeight: FontWeight.w700),
            ),
            inactiveColor: Color(0xff262626).withOpacity(.3),
            activeColor: textColor,
            backgroundColor: primaryColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.group),
            title: Text(
              'Community',
              style: GoogleFonts.sofiaSans(
                  color: textColor, fontSize: 15, fontWeight: FontWeight.w700),
            ),
            inactiveColor: Color(0xff262626).withOpacity(.3),
            activeColor: textColor,
            backgroundColor: primaryColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text(
              'Profile',
              style: GoogleFonts.sofiaSans(
                  color: textColor, fontSize: 15, fontWeight: FontWeight.w700),
            ),
            inactiveColor: Color(0xff262626).withOpacity(.3),
            activeColor: textColor,
            backgroundColor: primaryColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  _showAlertDialog() {
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
          title: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width / 18),
                child: Container(
                  height: height / 3.77,
                  child: Image.asset("assets/logout 1.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width / 18),
                child: Text(
                  'Are you sure you want to logout?',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: width / 18),
                  child: Container(
                    width: width / 18,
                    child: Text(
                      'Logging out will terminate your current session.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sofiaSans(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 37.7,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: height / 18.85,
                        width: width / 2.76,
                        decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.only(top: height / 94.25),
                          child: Text(
                            'Cancel',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 36,
                    ),
                    Container(
                      height: height / 18.85,
                      width: width / 2.76,
                      decoration: BoxDecoration(
                          color: Color(0xffFF2020),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.only(top: height / 94.25),
                        child: Text(
                          'Log Out',
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
            'Contact Our Admin',
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: height / 15.08,
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
                  width: width / 1.56,
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
                      height: height / 18.85,
                      child: Image.asset("assets/Playlist.png"),
                    ),
                    Text(
                      "Message :",
                      style: GoogleFonts.sofiaSans(
                        color: TextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: width / 1.56,
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
                  height: height / 37.7,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: height / 18.85,
                        width: width / 2.76,
                        decoration: BoxDecoration(
                            color: Color(0xffFF2020),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.only(top: height / 94.25),
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
                      width: width / 36,
                    ),
                    Container(
                      height: height / 18.85,
                      width: width / 2.76,
                      decoration: BoxDecoration(
                          color: Color(0xff00A05A),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.only(top: height / 94.25),
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
}