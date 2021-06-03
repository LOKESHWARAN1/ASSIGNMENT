import 'package:flutter/material.dart';
import 'package:fp/login_pages/login.dart';
import 'package:fp/pages/homepage.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
          key: _form,
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
                        ' Reset password',
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
                    'E-mail address verified! Set a new password',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
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
                      labelText: 'NEW PASSWORD',
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
                      labelText: 'RE-ENTER PASSWORD',
                      labelStyle: TextStyle(color: Colors.white70),
                      hintStyle: TextStyle(color: Colors.white),
                      hintText: 'enter password',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 6.5,
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      child: Text(
                        'RESET PASSWORD',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                      onPressed: () {
                        if (_form.currentState!.validate()) {
                          _form.currentState!.save();

                          FocusScope.of(context).unfocus();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
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
      ),
    );
  }
}
