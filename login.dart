import 'package:flutter/material.dart';
import 'package:fp/login_pages/forgot_password.dart';
import 'package:fp/login_pages/register.dart';
import 'package:fp/pages/homepage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _email, _password;
  bool validateEmail(String value) {
    RegExp regex = new RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return (!regex.hasMatch(value)) ? false : true;
  }

  void main() {
    print(validateEmail("aslam@gmail.com"));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool _obscureText = true;
    // ignore: unused_local_variable

    // ignore: unused_element
    void _toggle() {
      setState(() {});
    }

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            SizedBox.expand(
                child: Container(
              height: size.height,
              width: size.width,
              color: Color(0xff092E34),
            )),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
              child: Column(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage('assets/Lplogo.png'),
                        height: 280,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Form(
                    key: formKey,
                    child: ListView(
                      children: [
                        TextFormField(
                          onSaved: (value) {
                            _email = value!;
                          },
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
                          height: 20,
                        ),
                        TextFormField(
                          onSaved: (value) {
                            _password = value!;
                          },
                          obscureText: _obscureText,
                          validator: (password) {
                            if (password!.isEmpty)
                              return "please enter password";
                            else if (password.length < 8 ||
                                password.length > 15)
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // ignore: deprecated_member_use
                            FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPassword()));
                              },
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50.0,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            child: Text(
                              'LOG IN',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                if (_email == "bob123@gmail.com" &&
                                        _password == "root@123" ||
                                    _email == "ram123@gmail.com" &&
                                        _password == "root@123" ||
                                    _email == "kumar123@gmail.com" &&
                                        _password == "root@123") {
                                  FocusScope.of(context).unfocus();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home(),
                                    ),
                                  );
                                  print("vaild");
                                } else {
                                  print("not Vaild");
                                }
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
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),

                            // ignore: deprecated_member_use
                            FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()));
                              },
                              child: Text(
                                'Create one',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
