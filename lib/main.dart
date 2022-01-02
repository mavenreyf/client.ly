import 'package:cliently/screens/homeScreen.dart';
import 'package:cliently/screens/loginScreen.dart';
import 'package:cliently/utils/myRoutes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      routes: {
        iRoutes.homescreen: (context) => HomeScreen(),
        iRoutes.loginscreen: (context) => LoginScreen()
      },
    );
  }
}
