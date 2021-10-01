import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowingInfo extends StatelessWidget {
  String phone_number, password;

  ShowingInfo(this.phone_number, this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Phone Number: ${phone_number}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink,
              ) ,),
            Text('Password: ${password}',
              style: TextStyle(
              fontSize: 20,
              color: Colors.pink,
              ),),
          ],
        ),
      ),
    );
  }
}

