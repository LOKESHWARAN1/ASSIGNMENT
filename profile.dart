import 'package:flutter/material.dart';
import 'package:fp/pages/edit_details.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  )),
              Text(
                'PROFILE',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.5 - 10,
              ),
              Text(
                'LOG OUT',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'David Walberg',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditDetails()));
                  },
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircularPercentIndicator(
                    radius: 105.0,
                    lineWidth: 4.0,
                    animation: true,
                    percent: 0.4,
                    center: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
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
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'LEVEL',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Center(
                            child: Container(
                              height: 97,
                              width: 97,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                color: Color(0xff092E34),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '40',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'POINTS',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Center(
                            child: Container(
                              height: 97,
                              width: 97,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                color: Color(0xff092E34),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '52',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'MONTHLY\n  RAKING',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Center(
                            child: Container(
                              height: 97,
                              width: 97,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                color: Color(0xff092E34),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '520',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '     YEARLY\n    RANKING',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ],
          )
        ],
      )),
    );
  }
}
