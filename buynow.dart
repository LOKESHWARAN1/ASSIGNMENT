import 'package:flutter/material.dart';
import 'package:fp/pages/head.dart';
import 'package:fp/pages/purchase.dart';
import 'package:fp/pages/shop.dart';

class BuyNow extends StatefulWidget {
  const BuyNow({Key? key}) : super(key: key);

  @override
  _BuyNowState createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _name, _lname, _phoneno, _address;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
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
              Container(
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                width: MediaQuery.of(context).size.width - 50,
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'Adidas 10% Off\nJun - July,2020',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
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
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 120,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'FIRST NAME',
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                              onSaved: (value) {
                                _name = value!;
                              },
                              validator: (name) {
                                if (name!.isEmpty) {
                                  return "Please Enter First Name";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 40,
                            width: 110,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'LAST NAME',
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                              onSaved: (value) {
                                _lname = value!;
                              },
                              validator: (lname) {
                                if (lname!.isEmpty) {
                                  return "Please Enter Last Name";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 40,
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'PHONE NUMBER',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (value) {
                            _phoneno = value!;
                          },
                          validator: (phoneno) {
                            if (phoneno!.isEmpty)
                              return "please enter phoneno";
                            else {
                              if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                                  .hasMatch(phoneno)) {
                                return "phone number is incorrect";
                              }
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 40,
                        width: 250,
                        child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'ADDRESS',
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                            onSaved: (value) {
                              _address = value!;
                            },
                            validator: (address) {
                              if (address!.isEmpty) {
                                return "Please Enter address";
                              } else {
                                return null;
                              }
                            }),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 40,
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(hintText: ''),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width / 2,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          child: Text(
                            'BUY NOW',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              if (_name.isNotEmpty &&
                                  _lname.isNotEmpty &&
                                  _phoneno.isNotEmpty &&
                                  _address.isNotEmpty) {
                                print("vaild");
                                FocusScope.of(context).unfocus();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Purchase()));
                              } else
                                print("not Vaild");
                            }
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
