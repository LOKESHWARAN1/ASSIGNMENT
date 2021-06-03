import 'package:flutter/material.dart';
import 'package:fp/login_pages/login.dart';
import 'package:fp/login_pages/verified.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:gender_picker/source/enums.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  String title = 'Gender Picker';
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Text(
                'PROFILE PICTURE',
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
              SizedBox(
                height: 10,
              ),
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
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              _genderWidget(true, true),
              Expanded(
                child: Form(
                  key: _form,
                  child: ListView(
                    children: [
                      TextFormField(
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'USERNAME',
                          labelStyle: TextStyle(color: Colors.white70),
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'enter name',
                        ),
                        validator: (username) {
                          if (username!.isEmpty)
                            return "please enter name";
                          else
                            return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(color: Colors.white70),
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'enter email',
                        ),
                        validator: (email) {
                          if (email!.isEmpty) {
                            return "Please Enter Email";
                          } else {
                            if (!RegExp(
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                .hasMatch(email)) {
                              return "Its Not a valid Email";
                            }
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _pass,
                        obscureText: _obscureText,
                        validator: (password) {
                          if (password!.isEmpty)
                            return "please enter password";
                          else if (password.length < 8 || password.length > 15)
                            return "password length is incorrect";
                          return null;
                        },
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(color: Colors.white70),
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'enter password',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _confirmPass,
                        validator: (val) {
                          if (val!.isEmpty) return 'Empty';
                          if (val != _pass.text) return 'Not Match';
                          return null;
                        },
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'CONFIRM PASSWORD',
                          labelStyle: TextStyle(color: Colors.white70),
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'enter password',
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 48.0,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          child: Text(
                            'CREATE ACCOUNT',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          onPressed: () {
                            if (_form.currentState!.validate()) {
                              _form.currentState!.save();
                              FocusScope.of(context).unfocus();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Verified()));
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Have an account?',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),

                          // ignore: deprecated_member_use
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Text(
                              'Log in',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
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

  Widget _genderWidget(bool _showOther, bool _alignment) {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.white,
          ),
      margin: EdgeInsets.all(16.0),
      alignment: Alignment.center,
      child: GenderPickerWithImage(
        showOtherGender: _showOther,
        verticalAlignedText: _alignment,
        onChanged: (Gender? _gender) {
          print(_gender);
        },
        selectedGender: Gender.Male,
        selectedGenderTextStyle:
            TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
        unSelectedGenderTextStyle:
            TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
        equallyAligned: true,
        size: 54.0, // default size 40.0
        animationDuration: Duration(seconds: 1),
        isCircular: true, // by default true
        opacityOfGradient: 0.5,
        padding: EdgeInsets.all(8.0),
      ),
    );
  }
}
