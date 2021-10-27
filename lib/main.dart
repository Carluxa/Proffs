import 'package:flutter/material.dart';
import 'package:proffy/view/OwnOnboadingPage.dart';
import 'package:proffy/view/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      //home:OwnOnboadingPage1(),
      home: SplashScreenPage(),
    );
  }
}