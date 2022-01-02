// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cliently/screens/homeScreen.dart';
import 'package:cliently/utils/myColors.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool _isVisible = true;
    return Scaffold(
      backgroundColor: iColors.dark,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //Logo-Title//
            Padding(
              padding: EdgeInsets.only(top: height / 8, left: width / 5),
              child: DelayedDisplay(
                delay: Duration(milliseconds: 800),
                child: Text(
                  "Client.ly",
                  style: TextStyle(
                      color: iColors.text,
                      fontSize: 58,
                      fontFamily: GoogleFonts.pacifico().fontFamily,
                      letterSpacing: 4),
                ),
              ),
            ),
            //Input-Username//
            Padding(
              padding: EdgeInsets.only(top: height / 2.2),
              child: Center(
                child: DelayedDisplay(
                  delay: Duration(milliseconds: 1000),
                  child: Container(
                    height: height / 12,
                    width: width / 1.1,
                    decoration: BoxDecoration(
                        color: iColors.light,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            prefixIconColor: iColors.dark,
                            border: InputBorder.none,
                            hintText: "Username or email",
                            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //Input-Password//
            Padding(
              padding: EdgeInsets.only(top: height / 1.7),
              child: Center(
                child: DelayedDisplay(
                  delay: Duration(milliseconds: 1200),
                  child: Container(
                    height: height / 12,
                    width: width / 1.1,
                    decoration: BoxDecoration(
                        color: iColors.light,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: TextFormField(
                        obscureText: _isVisible,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          prefixIconColor: iColors.dark,
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height - 250, left: width / 1.5),
              child: DelayedDisplay(
                delay: Duration(milliseconds: 2000),
                child: Text(
                  "forgot password?",
                  style: TextStyle(color: iColors.text, fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 1.3),
              child: Center(
                child: DelayedDisplay(
                  delay: Duration(milliseconds: 1400),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (context, animation, _) {
                            return HomeScreen();
                          },
                          opaque: false));
                    },
                    child: Container(
                      height: height / 12,
                      width: width / 2,
                      decoration: BoxDecoration(
                          color: iColors.dark,
                          border: Border(
                              top: BorderSide(width: 5.0, color: iColors.light),
                              bottom:
                                  BorderSide(width: 5.0, color: iColors.light),
                              right:
                                  BorderSide(width: 5.0, color: iColors.light),
                              left:
                                  BorderSide(width: 5.0, color: iColors.light)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: iColors.text,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 1.05, left: width / 3.5),
              child: Row(
                children: [
                  DelayedDisplay(
                    delay: Duration(milliseconds: 1600),
                    child: Text(
                      "don't have'n account? ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 1800),
                    child: Text(
                      "SignUp",
                      style: TextStyle(color: iColors.light),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
