import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_church_management/Widgets/loading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../Widgets/nodata.dart';
import '../constant.dart';

class SpeechScreen extends StatefulWidget {
  String phone;
   SpeechScreen({required this.phone});

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
          "My Speech",
          style: GoogleFonts.sofiaSans(
              fontSize: 20, color: textColor, fontWeight: FontWeight.w800),
        ),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("Speeches").orderBy("timestamp",descending: true).snapshots(),
          builder: (context, snapshot) {
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context,index) {
                  if(snapshot.data!.docs.length==0){
                    return Nodata();
                  }
                  if(snapshot.hasData) {
                    var data = snapshot.data!.docs[index];
                    return data["lastName"] == widget.phone ? Container(
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
                                data["Date"],
                                style: GoogleFonts.sofiaSans(
                                    fontSize: 16,
                                    color: TextColor.withOpacity(.5),
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                width: width/3.14,
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
                                data["Time"],
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
                       /*   Padding(
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
                          ),*/

                          Padding(
                            padding: EdgeInsets.only(left: width/24),
                            child: Container(
                              width: width/1.16,
                              child: ReadMoreText(
                                data["speech"],

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

                        ],
                      ),
                    ) :SizedBox();
                  }

                  return LoadingState();
                }
            );
          }
      ),
    );
  }
}
