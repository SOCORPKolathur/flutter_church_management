import 'package:flutter/material.dart';
import 'package:flutter_church_management/Views/blog_expanded.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../constant.dart';

class Blogs extends StatefulWidget {
  const Blogs({super.key});

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
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
          "Blogs",
          style: GoogleFonts.sofiaSans(
              fontSize: 20, color: textColor, fontWeight: FontWeight.w800),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height / 25.13,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BlogExpanded()));
            },
            child: Row(
              children: [
                SizedBox(
                  width: width / 18,
                ),
                Container(
                  width: width / 2.76,
                  child: Image.asset("assets/image 21.png"),
                ),
                SizedBox(
                  width: width / 36,
                ),
                Column(
                  children: [
                    Container(
                        width: width / 1.89,
                        child: Text(
                          '"10 Uplifting Christian Songs to Renew Your Spirit"',
                          style: GoogleFonts.sofiaSans(
                              fontSize: 16,
                              color: TextColor,
                              fontWeight: FontWeight.w800),
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                          right: width / 2.7, top: height / 150.8),
                      child: Text(
                        "-Regressor",
                        style: GoogleFonts.sofiaSans(
                            fontSize: 12,
                            color: TextColor,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Container(
                      width: width / 1.89,
                      child: Text(
                        'In times of joy, sadness, or reflection, ',
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/Facebook Like.png"),
                        ),
                        Text("89 Liked"),
                        SizedBox(
                          width: width / 6,
                        ),
                        Text("2 Hrs Ago"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
