import 'package:flutter/material.dart';
import 'package:sprints/HorizontalContainers.dart';
import 'package:sprints/VerticalContainers.dart';
import 'package:sprints/getStarted.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          SizedBox(height: 100),
          Positioned(
            top: 30,
            child: Image.asset(
              "assets/flutter_logo.jpg",
              width: size.width * 0.5,
            ),
          ),
          Positioned(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Phone Number",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey)),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey)),
                    ),
                    Container(
//            padding: EdgeInsets.symmetric(vertical: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => VerticalContainers()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text(
                              "Log in",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    InkWell(
                      child: Text(
                        'Forgot password? No yawa. Tap me',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
//            padding: EdgeInsets.symmetric(vertical: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HorizontalContainers()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text(
                              "No account? Sign up",
                              style:
                              TextStyle(color: Colors.black54, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))
        ]),
      ),
    );
  }
}
//Navigator.of(context).push(MaterialPageRoute(builder: (context) => getStarted()));
//child: GestureDetector(
//                        onTap: () {
//                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => getStarted()));
//                        },
//                        child: Center(
//                          child: Text(
//                            'Log in',
//                            style: TextStyle(
//                                color: Colors.white,
//                                fontWeight: FontWeight.bold,
//                                fontFamily: 'Montserrat'),
//                          ),
//                        ),
//                      ),
