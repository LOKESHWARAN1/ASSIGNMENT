import 'package:flutter/material.dart';
import 'package:fp/pages/head.dart';
import 'package:fp/pages/shop.dart';

class Purchase extends StatelessWidget {
  const Purchase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: Column(
        children: [
          Head(),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white)),
                  Text(
                    'SHOP',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
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
                      height: 57,
                      width: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Color(0xff092E34),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.lightBlue,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Thank you for your purchase!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Divider(
              height: 0.1,
              color: Colors.white60,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  'Adidas 10% Off\nJun - July,2020',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                '   300\nPOINTS',
                style: TextStyle(fontSize: 15, color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
