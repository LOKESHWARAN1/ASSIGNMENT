import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fp/login_pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Life Points',
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250.0,
              width: 250.0,
              child: Image(
                image: AssetImage('assets/Lplogo.png'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
