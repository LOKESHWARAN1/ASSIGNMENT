import 'package:flutter/material.dart';

class EditDetails extends StatefulWidget {
  const EditDetails({Key? key}) : super(key: key);

  @override
  _EditDetailsState createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff092E34),
      body: SafeArea(
          child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('X',
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                  Text(
                    'EDIT PROFILE',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3 - 30,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 120,
                    child: TextFormField(
                      style: TextStyle(fontSize: 15, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'David',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 70,
                    width: 110,
                    child: TextFormField(
                      style: TextStyle(fontSize: 15, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Walberg',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 70,
                width: 250,
                child: TextFormField(
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'DavidW',
                  ),
                  validator: (username) {
                    if (username!.isEmpty)
                      return "please enter name";
                    else
                      return null;
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 70,
                width: 250,
                child: TextFormField(
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: 'davidwalb@gmail.com',
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 70,
                width: 250,
                child: TextFormField(
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  decoration: InputDecoration(
                    hintText: '+49-151-5557-847',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 70,
                width: 250,
                child: TextFormField(
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Boxhagener Str. 13',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
