import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class ChatScreen extends StatefulWidget {
  String title;
  ChatScreen(this.title);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
          widget.title,
          style: GoogleFonts.sofiaSans(
              fontSize: 20, color: textColor, fontWeight: FontWeight.w800),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height / 18.85,
          ),
          BubbleNormal(
            text: 'hai...',
            isSender: true,
            color: Color(0xFFDCEFFB),
            tail: true,
            //sent: true,
          ),
          SizedBox(
            height: height / 75.4,
          ),
          BubbleNormal(
            text: 'hai',
            color: Color(0xFFE8E8EE),
            tail: false,
            sent: false,
            isSender: false,
            //  seen: true,
            delivered: false,
          ),
          SizedBox(
            height: height / 75.4,
          ),
          BubbleNormal(
            text: 'bye',
            isSender: false,
            color: TextColor.withOpacity(.1),
            tail: true,
            textStyle: TextStyle(
              fontSize: 15,
              color: TextColor,
            ),
          ),
          SizedBox(
            height: height / 7.54,
          ),
          BubbleNormal(
            text: 'how was going your work?',
            isSender: false,
            color: TextColor.withOpacity(.1),
            tail: true,
            textStyle: TextStyle(
              fontSize: 15,
              color: TextColor,
            ),
          ),
          SizedBox(
            height: height / 75.4,
          ),
          BubbleNormal(
            text: 'good',
            isSender: true,
            color: Color(0xFFDCEFFB),
            tail: true,
            //sent: true,
          ),
          SizedBox(
            height: height / 75.4,
          ),
          BubbleNormal(
            text: 'hai',
            color: Color(0xFFE8E8EE),
            tail: false,
            sent: false,
            isSender: false,
            //  seen: true,
            delivered: false,
          ),
          SizedBox(
            height: height / 75.4,
          ),
          BubbleNormal(
            text: 'will u meet tomorrow',
            isSender: false,
            color: TextColor.withOpacity(.1),
            tail: true,
            textStyle: TextStyle(
              fontSize: 15,
              color: TextColor,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: height / 9.42,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(bottom: height / 37.7),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width / 36),
                child: Icon(
                  Icons.attachment,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width / 36),
                child: Container(
                  width: width / 1.44,
                  height: height / 15.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: TextColor.withOpacity(.3))),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: width / 18,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            top: height / 41.88,
                          ),
                          hintText: 'Send a message',
                          counter: SizedBox(),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Padding(
                              padding: EdgeInsets.only(top: height / 75.4),
                              child: Icon(
                                Icons.camera_alt,
                                color: TextColor.withOpacity(.3),
                              ),
                            ),
                          ),
                          hintStyle: GoogleFonts.sofiaSans(
                              color: Color(0xff262626).withOpacity(.3))),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width / 72),
                child: Container(
                  height: height / 15.08,
                  child: Image.asset("assets/Group 57.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
