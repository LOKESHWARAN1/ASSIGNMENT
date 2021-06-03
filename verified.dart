import 'package:flutter/material.dart';
import 'package:fp/login_pages/login.dart';
import 'package:fp/pages/homepage.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class Verified extends StatefulWidget {
  @override
  _VerifiedState createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  String _pin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: Padding(
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
                    ' Verification',
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
                'We have sent you a verification code to your email ID \n \ndavidwalb@gmail.com',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                key: _form,
                child: OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 45,
                  style: TextStyle(fontSize: 17, color: Colors.white),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                    _pin = pin;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Just Type This Code  2  4  1  0',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn\'t get a code?',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Tap to resent',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  child: Text(
                    'VERIFY',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                  ),
                  onPressed: () {
                    if (_form.currentState!.validate()) {
                      _form.currentState!.save();
                      if (_pin.isNotEmpty && _pin == "2410") {
                        FocusScope.of(context).unfocus();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
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
    );
  }
}
