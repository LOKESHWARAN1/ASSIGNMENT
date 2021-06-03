import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fp/pages/archivement.dart';
import 'package:fp/pages/colection.dart';
import 'package:fp/pages/qrcode.dart';
import 'package:fp/pages/shop.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController pageController;
  int getPageIndex = 0;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  whenPageChanges(int pageIndex) {
    setState(() {
      this.getPageIndex = pageIndex;
    });
  }

  onTapChange(int pageIndex) {
    pageController.animateToPage(pageIndex,
        duration: Duration(milliseconds: 10), curve: Curves.bounceInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Collection(),
          Qrcode(),
          Archivement(),
          Shop(),
        ],
        controller: pageController,
        onPageChanged: whenPageChanges,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: getPageIndex,
        onTap: onTapChange,
        backgroundColor: Color(0xff092E34),
        activeColor: Colors.pink,
        inactiveColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.collections)),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_2_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.archive)),
          BottomNavigationBarItem(icon: Icon(Icons.shop)),
        ],
      ),
    );
  }
}
