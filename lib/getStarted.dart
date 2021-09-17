import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class getStarted extends StatefulWidget {
  @override
  _getStartedState createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      type: MaterialType.transparency,
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20)),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Image.asset(
                    "assets/yoga.png",
                    width: size.width * 0.5
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget> [
                  Container(
                      margin: const EdgeInsets.only(
                        top: 0,
                        bottom: 10
                      ),
                      child: Text(
                        "Enjoy a healthy lifestyle",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black
                        ),)),
                  Container(
                    margin: EdgeInsets.all(32),
                    child: Text("Lorem ipsum dolor sit amet, Consecteur adipiscing elit, sed do eiusmod",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
//            padding: EdgeInsets.symmetric(vertical: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: Text(
                      "GET STARTED",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ) ,
                    ),
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
