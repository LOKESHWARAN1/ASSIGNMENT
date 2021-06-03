import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fp/pages/buynow.dart';
import 'package:fp/pages/details.dart';

import 'package:fp/pages/head.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: Stack(
        children: [
          Head(),
          Padding(
            padding: const EdgeInsets.only(
              top: 160,
              left: 20,
            ),
            child: Text(
              'SHOP',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 180,
              left: 20,
              right: 20,
            ),
            child: Shops(),
          ),
        ],
      ),
    );
  }
}

class Shops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        showDialog(
            context: context,
            builder: (context) {
              return Center(
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  child: AlertDialog(
                    content: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Positioned(
                            right: -40.0,
                            top: -40.0,
                            child: InkResponse(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: CircleAvatar(
                                child: Icon(Icons.close),
                                backgroundColor: Colors.white,
                              ),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage('assets/nike.jpg'),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Adidas 10% Off',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  '   300\nPOINTS',
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Get 10% Off of a \$ 100 purchase. Go to your nearest store to avail this discount. Vaild from Jun - July, 2020',
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 50.0,
                              width: MediaQuery.of(context).size.width,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                child: Text(
                                  'BUY NOW',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BuyNow()));
                                },
                                padding: EdgeInsets.all(10.0),
                                color: Color.fromRGBO(0, 120, 227, 1),
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  side: BorderSide(
                                    color: Color.fromRGBO(0, 160, 227, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            })
      },
      child: new StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) => new Container(
          child: ImageCard(imageData: imageList[index]),
        ),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isOdd ? 3 : 2),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({required this.imageData});
  final ImageData imageData;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        imageData.image,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ImageData {
  final String id;
  final String image;
  final String points;

  const ImageData({
    required this.id,
    required this.image,
    required this.points,
  });
}

const imageList = [
  ImageData(
    id: '01',
    image: 'assets/saint.jpg',
    points: '200\n points',
  ),
  ImageData(
    id: '02',
    image: 'assets/apple.jpeg',
    points: '500 \n points',
  ),
  ImageData(
    id: '03',
    image: 'assets/nike.jpg',
    points: '300\n points',
  ),
  ImageData(
    id: '04',
    image: 'assets/netfilx.jpeg',
    points: '100\n points',
  ),
  ImageData(
    id: '05',
    image: 'assets/realme.jpeg',
    points: '200\n points',
  ),
  ImageData(
    id: '06',
    image: 'assets/nikejust.jpg',
    points: '100\n points',
  ),
  ImageData(
    id: '07',
    image: 'assets/lorem.jpg',
    points: '400\n points',
  ),
];
