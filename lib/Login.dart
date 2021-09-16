import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
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
                  children: <Widget> [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Phone Number",
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                              )
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                )
                            ),
                          ),
                          SizedBox(height: 20),
                          Material(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.lightBlue,
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  'Log in',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                  ),

                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          InkWell(
                            child: Text('Forgot password? No yawa. Tap me',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold

                            ),),

                          ),
                          SizedBox(height: 20.0),
                          Material(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.grey,
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  'No Account? Sign Up',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'
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
          ]
        ),
    ),);
  }
}
