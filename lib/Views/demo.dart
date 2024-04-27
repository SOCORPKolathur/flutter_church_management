import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_church_management/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_rating/star_rating.dart';


class Example extends StatefulWidget {
  Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                height: 50,

                backgroundColor: primaryColor,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    child: Container(
                      width: 100,
                     child: Text("car",textAlign:TextAlign.center,style: TextStyle(
                         color: Color(0xffFFFFFF),
                       fontWeight: FontWeight.w800,
                       fontSize: 20
                     ),),
                    ),

                  ),
                  Tab(
                    child: Container(
                      width: 100,
                      child: Text("car",textAlign:TextAlign.center,style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w800,
                          fontSize: 20
                      ),),
                    ),
                  ),

                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                          height: height / 37.7,
                        ),
                        ListTile(
                          leading: Container(
                            width: width / 3.6,
                            child: Image.asset("assets/candle1.png"),
                          ),
                          title: Text(
                            "Blue Candles For Church",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 16,
                                color: TextColor,
                                fontWeight: FontWeight.w800),
                          ),
                          subtitle: Text(
                            "3 Items",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 14,
                                color: TextColor,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Order ID",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 2.4,
                            ),
                            Text(
                              "#39467934",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Product Total Price",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 3.6,
                            ),
                            Text(
                              "₹ 897/-",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Status",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 2.4,
                            ),
                            Container(
                              height: height / 30.16,
                              width: width / 3.6,
                              decoration: BoxDecoration(
                                  color: Color(0xff00A15B).withOpacity(.2),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: EdgeInsets.only(top: height / 377),
                                child: Text(
                                  "Shipping",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 14,
                                      color: Color(0xff00A15B),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height / 37.7,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 18,
                            ),
                            Container(
                              height: height / 21.54,
                              width: width / 2.4,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: height / 125.66),
                                child: Text(
                                  "Cancel",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 16,
                                      color: textColor.withOpacity(.7),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width / 24,
                            ),
                            Container(
                              height: height / 21.54,
                              width: width / 2.4,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F5F5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: height / 125.66),
                                child: Text(
                                  "Track Order",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 16,
                                      color: TextColor.withOpacity(.4),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          endIndent: 10,
                          indent: 10,
                          color: TextColor.withOpacity(.1),
                        ),
                        ListTile(
                          leading: Container(
                            width: width / 3.6,
                            child: Image.asset("assets/candle1.png"),
                          ),
                          title: Text(
                            "Blue Candles For Church",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 16,
                                color: TextColor,
                                fontWeight: FontWeight.w800),
                          ),
                          subtitle: Text(
                            "3 Items",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 14,
                                color: TextColor,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Order ID",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 2.4,
                            ),
                            Text(
                              "#39467934",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Product Total Price",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 3.6,
                            ),
                            Text(
                              "₹ 897/-",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Status",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 2.4,
                            ),
                            Container(
                              height: height / 30.16,
                              width: width / 3.6,
                              decoration: BoxDecoration(
                                  color: Color(0xffFF7345).withOpacity(.2),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: EdgeInsets.only(top: height / 377),
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
                        SizedBox(
                          height: height / 37.7,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 18,
                            ),
                            Container(
                              height: height / 21.54,
                              width: width / 2.4,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: height / 125.66),
                                child: Text(
                                  "Cancel",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 16,
                                      color: textColor.withOpacity(.7),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width / 24,
                            ),
                            Container(
                              height: height / 21.54,
                              width: width / 2.4,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F5F5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: height / 125.66),
                                child: Text(
                                  "Track Order",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 16,
                                      color: TextColor.withOpacity(.4),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          endIndent: 10,
                          indent: 10,
                          color: TextColor.withOpacity(.1),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: height / 37.7,
                        ),
                        ListTile(
                          leading: Container(
                            width: width / 3.6,
                            child: Image.asset("assets/candle1.png"),
                          ),
                          title: Text(
                            "Blue Candles For Church",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 16,
                                color: TextColor,
                                fontWeight: FontWeight.w800),
                          ),
                          subtitle: Text(
                            "3 Items",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 14,
                                color: TextColor,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Order ID",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 2.4,
                            ),
                            Text(
                              "#39467934",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Product Total Price",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 3.6,
                            ),
                            Text(
                              "₹ 897/-",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Status",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 2.4,
                            ),
                            Container(
                              height: height / 30.16,
                              width: width / 3.6,
                              decoration: BoxDecoration(
                                  color: Color(0xffE6F6FF),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: EdgeInsets.only(top: height / 377),
                                child: Text(
                                  "Delivered",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 14,
                                      color: primaryColor,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height / 37.7,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 18,
                            ),
                            // StarRating(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   length: starLength,
                            //   rating: _rating,
                            //   between: 5,
                            //   starSize: 30,
                            //   color: Colors.yellow,
                            //   onRaitingTap: (rating) {
                            //     print('Clicked rating: $rating / $starLength');
                            //     setState(() {
                            //       _rating = rating;
                            //     });
                            //   },
                            // ),
                            SizedBox(
                              width: width / 8,
                            ),
                            Container(
                              height: height / 18.85,
                              width: width / 3.6,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: height / 94.25),
                                child: Text(
                                  "Re Order",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 16,
                                      color: textColor.withOpacity(.7),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          endIndent: 10,
                          indent: 10,
                          color: TextColor.withOpacity(.1),
                        ),
                        ListTile(
                          leading: Container(
                            width: width / 3.6,
                            child: Image.asset("assets/candle1.png"),
                          ),
                          title: Text(
                            "Blue Candles For Church",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 16,
                                color: TextColor,
                                fontWeight: FontWeight.w800),
                          ),
                          subtitle: Text(
                            "3 Items",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 14,
                                color: TextColor,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Order ID",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 2.4,
                            ),
                            Text(
                              "#39467934",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Product Total Price",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 3.6,
                            ),
                            Text(
                              "₹ 897/-",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 9,
                            ),
                            Text(
                              "Status",
                              style: GoogleFonts.sofiaSans(
                                  fontSize: 14,
                                  color: TextColor.withOpacity(.4),
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: width / 2.4,
                            ),
                            Container(
                              height: height / 30.16,
                              width: width / 3.6,
                              decoration: BoxDecoration(
                                  color: Color(0xffE6F6FF),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding: EdgeInsets.only(top: height / 377),
                                child: Text(
                                  "Delivered",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 14,
                                      color: primaryColor,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height / 37.7,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 18,
                            ),
                            // StarRating(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   length: starLength,
                            //   rating: _rating,
                            //   between: 5,
                            //   starSize: 30,
                            //   color: Colors.yellow,
                            //   onRaitingTap: (rating) {
                            //     print('Clicked rating: $rating / $starLength');
                            //     setState(() {
                            //       _rating = rating;
                            //     });
                            //   },
                            // ),
                            SizedBox(
                              width: width / 8,
                            ),
                            Container(
                              height: height / 18.85,
                              width: width / 3.6,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(top: height / 94.25),
                                child: Text(
                                  "Re Order",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.sofiaSans(
                                      fontSize: 16,
                                      color: textColor.withOpacity(.7),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          endIndent: 10,
                          indent: 10,
                          color: TextColor.withOpacity(.1),
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