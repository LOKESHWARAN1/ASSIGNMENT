import 'package:flutter/material.dart';
import 'package:fp/pages/configuration.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/nike.jpg'),
                              fit: BoxFit.cover)),
                    )),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/nike.jpg'),
                              fit: BoxFit.cover)),
                    )),
                  ],
                )),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 480,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        //color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      margin: EdgeInsets.only(left: 30, top: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Nike Joyride',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet.',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n\nsed do eiusmod tempor incididunt ut labore et dolore.\n\nLorem ipsum dolor sit amet, consectetur',
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                height: 60.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Center(
                                        child: Container(
                                          height: 53,
                                          width: 53,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(26),
                                              color: Colors.blueGrey),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Icon(
                                        Icons.thumb_up_alt,
                                        color: Colors.green,
                                        size: 30,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 13,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                height: 60.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.lightBlue),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Center(
                                        child: Container(
                                          height: 53,
                                          width: 53,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(26),
                                              color: Colors.blueGrey),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Icon(
                                        Icons.thumb_down_alt_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('assets/nike.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.play_circle_fill_outlined,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
