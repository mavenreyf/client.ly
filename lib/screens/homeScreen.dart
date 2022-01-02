// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cliently/utils/myColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List images = [
    "https://images.unsplash.com/photo-1641004758882-462b11e83d96?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0OXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1640791461147-b7507b02a1a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1640622304326-db5e15903ab4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMzR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1640930815355-79d8d0aac8b8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNTV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1638460102093-d05514ba5ba4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxODJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
  ];
  List names = ["Millie", "Soham", "Jacob", "Chenlie", "Priya"];
  List subs = [
    "millie004@gmail.com",
    "sohamiyris@gmail.com",
    "jacob99@gmail.com",
    "chenliefeyk@gmail.com",
    "priyakumari@gmail.com"
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: iColors.dark,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height / 10, left: width / 30),
              child: Text(
                "hey, Erick 👋",
                style: TextStyle(
                    color: iColors.text,
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 8, left: width / 30),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                    color: iColors.text,
                    fontSize: 28,
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
            //--Avatar--//
            Padding(
              padding: EdgeInsets.only(top: height / 10, left: width / 1.2),
              child: CircleAvatar(
                radius: height / 30,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                  "https://png.pngtree.com/png-vector/20190321/ourmid/pngtree-vector-users-icon-png-image_856952.jpg",
                ),
              ),
            ),
            //Search-Bar//
            Padding(
              padding: EdgeInsets.only(top: height / 5, left: width / 22),
              child: Container(
                height: height / 14,
                width: width / 1.1,
                decoration: BoxDecoration(
                    color: iColors.light,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 28,
                          color: iColors.text,
                        ),
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: iColors.text,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.roboto().fontFamily)),
                  ),
                ),
              ),
            ),
            //--Row--//
            Padding(
              padding: EdgeInsets.only(bottom: height / 3.5),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.only(left: width / 10, top: height / 3.3),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              height: height / 10,
                              width: width / 6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: iColors.light,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(images[index]))),
                            ),
                          ),
                          SizedBox(
                            height: height / 100,
                          ),
                          Text(
                            names[index],
                            style: TextStyle(
                                color: iColors.text,
                                fontWeight: FontWeight.bold,
                                fontFamily:
                                    GoogleFonts.montserrat().fontFamily),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            //-----//

            Padding(
              padding: EdgeInsets.only(
                  top: height / 2.2, left: width / 30, right: width / 50),
              child: ListView.builder(
                  itemCount: 5,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      children: [
                        ListTile(
                            leading: CircleAvatar(
                              radius: height / 30,
                              backgroundImage: NetworkImage(images[index]),
                            ),
                            title: Text(
                              names[index],
                              style: TextStyle(
                                  color: iColors.text,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            subtitle: Text(
                              subs[index],
                              style: TextStyle(
                                  color: iColors.text,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  CupertinoIcons.chat_bubble_2_fill,
                                  color: iColors.icon,
                                  size: 28,
                                ),
                                SizedBox(
                                  width: width / 40,
                                ),
                                Icon(
                                  CupertinoIcons.phone_fill,
                                  color: Colors.greenAccent,
                                  size: 28,
                                ),
                              ],
                            )),
                        SizedBox(
                          height: height / 30,
                        )
                      ],
                    );
                  }),
            )
          ],
        ));
  }
}
