import 'package:flutter/material.dart';
import 'package:fp/login_pages/login.dart';
import 'package:fp/login_pages/reset_password.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image(
                    image: AssetImage('assets/Lplogo.png'),
                    height: 250,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                      color: Colors.white,
                    ),
                    Text(
                      ' Forgot password?',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Give us your registered email address and we\'ll send\n you link to reset your password',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(
                  height: 50,
                ),
                Form(
                  key: formKey,
                  child: TextFormField(
                    style: TextStyle(fontSize: 15, color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(color: Colors.white70),
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: 'enter email',
                    ),
                    onSaved: (value) {
                      _email = value!;
                    },
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
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                ),
                Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    child: Text(
                      'SEND',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        if (_email.isNotEmpty &&
                                _email == 'mlokesh672000@gmail.com' ||
                            _email == "ram123@gmail.com" ||
                            _email == "kumar123@gmail.com") {
                          print("vaild");
                          FocusScope.of(context).unfocus();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResetPassword()));
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
                SizedBox(
                  height: 20,
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
      ),
    );
  }
}
