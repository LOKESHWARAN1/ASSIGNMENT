import 'package:flutter/material.dart';
import 'package:fp/pages/configuration.dart';
import 'package:fp/pages/details.dart';
import 'package:fp/pages/head.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Collection extends StatefulWidget {
  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Head(),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'NEWS',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Details()));
              },
              child: Stack(
                children: [
                  Container(
                    height: 520,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Stack(
                            children: [
                              Container(
                                height: 510,
                                width: MediaQuery.of(context).size.width / 1.3,
                                //padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                      begin: FractionalOffset(0.0, 0.0),
                                      end: FractionalOffset(1.0, 0.0),
                                      colors: [
                                        Color(0xFF3366FF),
                                        Color(0xFF00ccFF)
                                      ]),
                                  border: Border(
                                    left: BorderSide(
                                        color: Color(0xFFFF0099), width: 3),
                                    right: BorderSide(
                                        color: Color(0xFFFF0099), width: 3),
                                    top: BorderSide(
                                        color: Color(0xFFFF0099), width: 3),
                                    bottom: BorderSide(
                                        color: Color(0xFFFF0099), width: 3),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      categories[index]['iconPath'],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Positioned(
                                top: MediaQuery.of(context).size.height / 1.9,
                                left: 23,
                                right: 3,
                                child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: 86,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                0.5,
                                        decoration: BoxDecoration(
                                          color: Color(0xff092E34),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(26),
                                              bottomRight: Radius.circular(26)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              25, 10, 0, 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                categories[index]['name'],
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                categories[index]['detail'],
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ))),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
