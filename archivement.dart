import 'package:flutter/material.dart';
import 'package:fp/pages/configuration.dart';
import 'package:fp/pages/head.dart';

class Archivement extends StatefulWidget {
  @override
  _ArchivementState createState() => _ArchivementState();
}

class _ArchivementState extends State<Archivement> {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: Column(
        children: [
          Head(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'RANKING',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Monthly',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              Transform.scale(
                  scale: 1,
                  child: Switch(
                      onChanged: toggleSwitch,
                      value: isSwitched,
                      activeColor: Colors.lightBlueAccent,
                      activeTrackColor: Color(0xff006699),
                      inactiveThumbColor: Colors.lightBlueAccent,
                      inactiveTrackColor: Color(0xFF006699))),
              Text(
                'Yearly',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            height: 520,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 20,
                              top: 20,
                            ),
                            child: Text(
                              categories[index]['no'].toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(
                              left: 20,
                              top: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage(
                                  categories[index]['iconPath'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 20,
                                  top: 20,
                                ),
                                child: Text(
                                  categories[index]['name'],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      top: 10,
                                    ),
                                    child: Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Text(
                                      categories[index]['point'],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(
                              left: 20,
                              top: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(
                                categories[index]['color'],
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/Lplogo.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Divider(
                          color: Colors.white70,
                          height: 0.1,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
