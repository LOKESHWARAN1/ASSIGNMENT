import 'package:flutter/material.dart';
import 'package:fp/pages/head.dart';

class Qrcode extends StatelessWidget {
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
              child: Text(
                'DIGITAL MEMBER CARD',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image(image: AssetImage('assets/qrcode.jpg')),
          )
        ],
      ),
    );
  }
}
