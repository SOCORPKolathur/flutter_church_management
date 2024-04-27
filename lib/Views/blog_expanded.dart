import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

import '../constant.dart';

class BlogExpanded extends StatefulWidget {
  const BlogExpanded({super.key});

  @override
  State<BlogExpanded> createState() => _BlogExpandedState();
}

class _BlogExpandedState extends State<BlogExpanded> {
  int count = 0;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width/12, top: height/25.13),
              child: Container(
                  width: width/1.2,
                  child: Column(
                    children: [
                      Text(
                        '"10 Uplifting Christian Songs to Renew Your Spirit"',
                        style: GoogleFonts.sofiaSans(
                            fontSize: 20,
                            color: TextColor,
                            fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: width/3),
                        child: Text(" -Regressor"),
                      ),
                      Row(
                        children: [
                          Text(
                            "24 Min Ago",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 14,
                                color: TextColor,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            width: width/6,
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                count++;
                              });
                            },
                            child: Icon(
                              Icons.thumb_up_alt_outlined,
                              color: primaryColor,
                              size: 14,
                            ),
                          ),
                          SizedBox(
                            width: width/36,
                          ),
                          Text(
                         "${ count}",
                            style: GoogleFonts.sofiaSans(
                                fontSize: 14,
                                color: TextColor,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            width: width/3.6,
                          ),
                          InkWell(
                            onTap: (){
                              Share.share(
                                  'check out my website https://example.com',
                                  subject: 'Look what I made!');
                            },
                            child: Icon(
                              Icons.share,
                              color: primaryColor,
                              size: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            Padding(
              padding:  EdgeInsets.only(left: width/18, top: height/37.7),
              child: Container(
                width: width/1.12,
                child: Image.asset("assets/image 21 (1).png"),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: width/18, top: height/25.13),
              child: Container(
                width: width/1.12,
                child: Text(
                  "In times of joy, sadness, or reflection, Christian music has the power to"
                  " uplift our spirits and bring us closer to God. Whether you're looking for worship anthems, "
                  "soulful hymns, or contemporary Christian hits, "
                  "here are ten uplifting songs that will renew your spirit and strengthen your faith."
                  "\n\nAmazing Grace  by Chris Tomlin:\n\nAmazing Grace  by Chris Tomlin:A timeless"
                  " hymn beautifully reimagined by Chris Tomlin, Amazing Grace"
                  " reminds us of the boundless love and grace of God.Oceans "
                  "(Where Feet May Fail) -by Hillsong With its powerful lyrics and "
                  "soaring melodies Oceans  is a stirring anthem of faith and surrender "
                  "How Great Is Our God by Chris Tomlin"
                  "modern worship classic, How Great Is Our God declares the majesty and power of our Creator"
                  "Good Good Father by Chris Tomlin"
                  "This heartwarming song celebrates the unconditional love of God as our heavenly Father"
                  "In Christ Alone by Keith and Kristyn Getty Whether you're seeking comfort, encouragement, "
                  "or simply a deeper connection with God, these ten Christian songs offer a soundtrack for your "
                  "journey of faith.Let the melodies and lyrics fill your heart with hope, peace,"
                  " and the assurance of God's unfailing love. ",
                  style: GoogleFonts.sofiaSans(
                      fontSize: 16,
                      color: TextColor.withOpacity(.3),
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            SizedBox(
              height: height/25.13,
            ),
          ],
        ),
      ),
    );
  }
}
