import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../constant.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({super.key});

  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  var _trimMode = TrimMode.Line;
  int _trimLines = 2;
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
          "MY Speech",
          style: GoogleFonts.sofiaSans(
              fontSize: 20, color: textColor, fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
            height: height/25.13,
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
            SizedBox(
              height: height/75.4,
            ),
            Padding(
              padding:  EdgeInsets.only(right: width/1.8),
              child: Text(
                "Speech Title",
                style: GoogleFonts.sofiaSans(
                    fontSize: 20,
                    color: TextColor,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: height/75.4,
            ),
            Padding(
              padding:  EdgeInsets.only(right: width/18),
              child: Text(
                '"Good morning, beloved congregation,"',
                style: GoogleFonts.sofiaSans(
                    fontSize: 16,
                    color: TextColor.withOpacity(.5),
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
             height: height/37.7,
            ),
            Padding(
              padding: EdgeInsets.only(left: width/24),
              child: Container(
                width: width/1.16,
                child: ReadMoreText(
                  "As we gather together in the presence of the Lord, I am filled with gratitude "
                  "for each and every one of you who has joined us today. Our faith community is a source"
                  " of strength, love, and support, and it is truly a blessing to be able to worship "
                  "together in unity.Today, let us reflect on the power of faith and the hope it"
                  " brings into our lives. In times of joy, our faith uplifts us, and in moments of "
                  "trial, it sustains us. Through our shared journey of faith, we find comfort "
                  "in knowing that we are never alone, for God walks beside us every step of the way."
                  "As we delve into today's sermon, let us open our hearts and minds to receive"
                  " the message of hope, love, and redemption. May it inspire us to live each day"
                  " with purpose and to extend grace and compassion to all those we encounter."
                  "I encourage each of you to take a moment to offer prayers for those in need,"
                  " to lend a helping hand to those facing challenges, and to spread kindness wherever "
                  "you go. Together, let us be beacons of light in a world that so desperately needs it."
                  "Thank you for being a part of our church family, and may God's love continue to guide"
                  " and bless us all.Amen.",

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
            ),
            SizedBox(
              height: height/75.4,
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
            SizedBox(
              height: height/75.4,
            ),
            Padding(
              padding:  EdgeInsets.only(right: width/1.8),
              child: Text(
                "Speech Title",
                style: GoogleFonts.sofiaSans(
                    fontSize: 20,
                    color: TextColor,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: height/75.4,
            ),
            Padding(
              padding:  EdgeInsets.only(right: width/18),
              child: Text(
                '"Good morning, beloved congregation,"',
                style: GoogleFonts.sofiaSans(
                    fontSize: 16,
                    color: TextColor.withOpacity(.5),
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
             height: height/37.7,
            ),
            Padding(
              padding:  EdgeInsets.only(left: width/24),
              child: Container(
                width: width/1.16,
                child: ReadMoreText(
                  "As we gather together in the presence of the Lord, I am filled with gratitude "
                  "for each and every one of you who has joined us today. Our faith community is a source"
                  " of strength, love, and support, and it is truly a blessing to be able to worship "
                  "together in unity.Today, let us reflect on the power of faith and the hope it"
                  " brings into our lives. In times of joy, our faith uplifts us, and in moments of "
                  "trial, it sustains us. Through our shared journey of faith, we find comfort "
                  "in knowing that we are never alone, for God walks beside us every step of the way."
                  "As we delve into today's sermon, let us open our hearts and minds to receive"
                  " the message of hope, love, and redemption. May it inspire us to live each day"
                  " with purpose and to extend grace and compassion to all those we encounter."
                  "I encourage each of you to take a moment to offer prayers for those in need,"
                  " to lend a helping hand to those facing challenges, and to spread kindness wherever "
                  "you go. Together, let us be beacons of light in a world that so desperately needs it."
                  "Thank you for being a part of our church family, and may God's love continue to guide"
                  " and bless us all.Amen.",

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
            ),
            SizedBox(
              height: height/75.4,
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
            SizedBox(
              height: height/75.4,
            ),
            Padding(
              padding:  EdgeInsets.only(right: width/1.8),
              child: Text(
                "Speech Title",
                style: GoogleFonts.sofiaSans(
                    fontSize: 20,
                    color: TextColor,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: height/75.4,
            ),
            Padding(
              padding:  EdgeInsets.only(right: width/18),
              child: Text(
                '"Good morning, beloved congregation,"',
                style: GoogleFonts.sofiaSans(
                    fontSize: 16,
                    color: TextColor.withOpacity(.5),
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
             height: height/37.7,
            ),
            Padding(
              padding:  EdgeInsets.only(left: width/24),
              child: Container(
                width: width/1.16,
                child: ReadMoreText(
                  "As we gather together in the presence of the Lord, I am filled with gratitude "
                  "for each and every one of you who has joined us today. Our faith community is a source"
                  " of strength, love, and support, and it is truly a blessing to be able to worship "
                  "together in unity.Today, let us reflect on the power of faith and the hope it"
                  " brings into our lives. In times of joy, our faith uplifts us, and in moments of "
                  "trial, it sustains us. Through our shared journey of faith, we find comfort "
                  "in knowing that we are never alone, for God walks beside us every step of the way."
                  "As we delve into today's sermon, let us open our hearts and minds to receive"
                  " the message of hope, love, and redemption. May it inspire us to live each day"
                  " with purpose and to extend grace and compassion to all those we encounter."
                  "I encourage each of you to take a moment to offer prayers for those in need,"
                  " to lend a helping hand to those facing challenges, and to spread kindness wherever "
                  "you go. Together, let us be beacons of light in a world that so desperately needs it."
                  "Thank you for being a part of our church family, and may God's love continue to guide"
                  " and bless us all.Amen.",

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
            ),
            SizedBox(
              height: height/75.4,
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
            SizedBox(
              height: height/75.4,
            ),
            Padding(
              padding: EdgeInsets.only(right: width/1.8),
              child: Text(
                "Speech Title",
                style: GoogleFonts.sofiaSans(
                    fontSize: 20,
                    color: TextColor,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: height/75.4,
            ),
            Padding(
              padding: EdgeInsets.only(right: width/18),
              child: Text(
                '"Good morning, beloved congregation,"',
                style: GoogleFonts.sofiaSans(
                    fontSize: 16,
                    color: TextColor.withOpacity(.5),
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
             height: height/37.7,
            ),
            Padding(
              padding: EdgeInsets.only(left: width/24),
              child: Container(
                width: width/1.16,
                child: ReadMoreText(
                  "As we gather together in the presence of the Lord, I am filled with gratitude "
                  "for each and every one of you who has joined us today. Our faith community is a source"
                  " of strength, love, and support, and it is truly a blessing to be able to worship "
                  "together in unity.Today, let us reflect on the power of faith and the hope it"
                  " brings into our lives. In times of joy, our faith uplifts us, and in moments of "
                  "trial, it sustains us. Through our shared journey of faith, we find comfort "
                  "in knowing that we are never alone, for God walks beside us every step of the way."
                  "As we delve into today's sermon, let us open our hearts and minds to receive"
                  " the message of hope, love, and redemption. May it inspire us to live each day"
                  " with purpose and to extend grace and compassion to all those we encounter."
                  "I encourage each of you to take a moment to offer prayers for those in need,"
                  " to lend a helping hand to those facing challenges, and to spread kindness wherever "
                  "you go. Together, let us be beacons of light in a world that so desperately needs it."
                  "Thank you for being a part of our church family, and may God's love continue to guide"
                  " and bless us all.Amen.",

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
            ),
            SizedBox(
              height: height/75.4,
            ),
            Divider(
              color: Colors.grey.withOpacity(.3),
              endIndent: 10,
              indent: 10,
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
