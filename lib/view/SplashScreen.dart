import 'dart:async';

import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proffy/view/IntrodutionScreenPage.dart';
import 'package:proffy/view/OwnOnboadingPage.dart';
import 'package:proffy/widgets/constantes.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(context,MaterialPageRoute<void>(builder: (BuildContext context) => OwnOnboadingPage1()),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColors,
       body:
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 100.0),
         child: Container(
           child: SizedBox(child: Image.asset('assets/images/splash.png')),
         ),
        ),
    );
  }
}
