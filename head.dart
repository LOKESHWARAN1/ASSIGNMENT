import 'package:flutter/material.dart';
import 'package:fp/pages/profile.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Head extends StatefulWidget {
  @override
  _HeadState createState() => _HeadState();
}

class _HeadState extends State<Head> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
            Color(0xFF191970),
            Color(0xFF483D8B),
          ])),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Profile()))
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/profile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'DavidW',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(
              width: 80,
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Points',
                    style: TextStyle(fontSize: 13, color: Colors.white70),
                  ),
                  Text(
                    '40',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            CircularPercentIndicator(
              radius: 65.0,
              lineWidth: 4.0,
              animation: true,
              percent: 0.4,
              center: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    child: Image(
                      image: AssetImage('assets/Lplogo.png'),
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.black,
              progressColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
