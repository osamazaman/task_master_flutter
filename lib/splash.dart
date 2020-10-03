import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      image: Image.asset(
        'assets/logo.jpeg',
        height: 85,
        width: 103,
        alignment: Alignment.center,
      ),
      title: Text(
        'Quick Task',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      navigateAfterSeconds: Login(),
      backgroundColor: Color(0xffca333a),
//      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
    );
  }
}
