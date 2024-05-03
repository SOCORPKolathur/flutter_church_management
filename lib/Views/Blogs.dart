import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_church_management/Views/blog_expanded.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../Widgets/loading.dart';
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
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Blogs").orderBy("timestamp",descending: true).snapshots(),
        builder: (context,snapshot){
          return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context,index) {
                if (snapshot.hasData) {
                  var data = snapshot.data!.docs[index];
                  return
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: height / 25.13,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => BlogExpanded(docid: data.id,)));
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: width / 18,
                              ),
                              Container(
                                width: width / 2.76,
                                child: ClipRRect(
                                    
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(data["imgUrl"])),
                              ),
                              SizedBox(
                                width: width / 36,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: width / 1.89,
                                      child: Text(
                                        data["title"],
                                        style: GoogleFonts.sofiaSans(
                                            fontSize: 16,
                                            color: TextColor,
                                            fontWeight: FontWeight.w800),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: width / 2.7, top: height / 150.8),
                                    child: Text(
                                      "-${data["author"]}",
                                      style: GoogleFonts.sofiaSans(
                                          fontSize: 12,
                                          color: TextColor,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                  Container(
                                    width: width / 1.89,
                                    child: Text(
                                      data["description"],
                                      overflow: TextOverflow.ellipsis,
                                    ),

                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Image.asset("assets/Facebook Like.png"),
                                      ),
                                      Text("${data["time"].length} Liked"),
                                      SizedBox(
                                        width: width / 6,
                                      ),
                                      Text(" ${data["time"]}"),
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
                return LoadingState();
              }
          );
        },
      ),
    );
  }
}
