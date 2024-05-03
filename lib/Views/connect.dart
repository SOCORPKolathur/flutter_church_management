import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_church_management/Views/chatscreen.dart';
import 'package:flutter_church_management/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({super.key});

  @override
  State<ConnectPage> createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  String userid="";
  String username="User";
  getuser() async {
    var document = await FirebaseFirestore.instance.collection('Users').where('id',isEqualTo: FirebaseAuth.instance.currentUser!.uid).get();
    setState(() {
      username=document.docs[0]["firstName"];
      userid=document.docs[0].id;
    });

  }

  @override
  void initState() {
    getuser();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Connect",
          style: GoogleFonts.sofiaSans(
            color: textColor,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (){
              print(userid);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>ChatScreen(
                      title: "Church Group",userDocId: userid,uid: FirebaseAuth.instance.currentUser!.uid,
                        collection:"ChurchChat",isClan: false,
                      clanId: "",committeeId:"",
                      isCommittee: false))
              );
            },
            leading: Padding(
              padding: EdgeInsets.only(left: width/36),
              child: Container(
                height: height/15.08,
                child: Image.asset("assets/holy_church.png"),
              ),
            ),
            title: Text(
              "Church Group",
              style: GoogleFonts.sofiaSans(
                color: TextColor,
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            subtitle: Text(
              "Hello !",
              style: GoogleFonts.sofiaSans(
                color: TextColor.withOpacity(.4),
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
            trailing: Text(
              "02:15 Am",
              style: GoogleFonts.sofiaSans(
                color: TextColor,
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            width: width/1.02,
            child: Divider(
              color: Color(0xff262626).withOpacity(.1),
            ),
          ),
          ListTile(
            onTap: (){
              /*Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>ChatScreen("Chennai Zone"))
              );*/
            },
            leading: Padding(
              padding:  EdgeInsets.only(left: width/36),
              child: Container(
                height: height/15.08,
                child: Image.asset("assets/Mask group (13).png"),
              ),
            ),
            title: Text(
              "Chennai Zone",
              style: GoogleFonts.sofiaSans(
                color: TextColor,
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            subtitle: Text(
              "Task completed",
              style: GoogleFonts.sofiaSans(
                color: TextColor.withOpacity(.4),
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
            trailing: Text(
              "08:42 Am",
              style: GoogleFonts.sofiaSans(
                color: TextColor,
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            width: width/1.02,
            child: Divider(
              color: Color(0xff262626).withOpacity(.1),
            ),
          ),
          ListTile(
            onTap: (){
             /* Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>ChatScreen("Choir Group"))
              );*/
            },
            leading: Padding(
              padding: EdgeInsets.only(left: width/36),
              child: Container(
                height: height/15.08,
                child: Image.asset("assets/Mask group (14).png"),
              ),
            ),
            title: Text(
              "Choir Group",
              style: GoogleFonts.sofiaSans(
                color: TextColor,
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            subtitle: Text(
              "Today special...",
              style: GoogleFonts.sofiaSans(
                color: TextColor.withOpacity(.4),
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
            trailing: Text(
              "12:15 Am",
              style: GoogleFonts.sofiaSans(
                color: TextColor,
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            width: width/1.02,
            child: Divider(
              color: Color(0xff262626).withOpacity(.1),
            ),
          ),
          ListTile(
            onTap: (){
            /*  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>ChatScreen("Blood requirements"))
              );*/
            },
            leading: Padding(
              padding: EdgeInsets.only(left: width/36),
              child: Container(
                height: height/15.08,
                child: Image.asset("assets/image 14.png"),
              ),
            ),
            title: Text(
              "Blood requirement",
              style: GoogleFonts.sofiaSans(
                color: TextColor,
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            subtitle: Text(
              "Urgent B+ needed",
              style: GoogleFonts.sofiaSans(
                color: TextColor.withOpacity(.4),
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
            trailing: Text(
              "02:15 Pm",
              style: GoogleFonts.sofiaSans(
                color: TextColor,
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            width: width/1.02,
            child: Divider(
              color: Color(0xff262626).withOpacity(.1),
            ),
          ),
       /*   ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: width/36),
              child: Container(
                height: height/15.08,
                child: Image.asset("assets/holy_church.png"),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Church",
                style: GoogleFonts.sofiaSans(
                  color: TextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Text(
                "Hello !",
                style: GoogleFonts.sofiaSans(
                  color: TextColor.withOpacity(.4),
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            trailing: Text(
              "02:15 Am",
              style: GoogleFonts.sofiaSans(
                color: TextColor,
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
