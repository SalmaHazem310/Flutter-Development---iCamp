import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalContainers extends StatefulWidget {
  @override
  _ContainersState createState() => _ContainersState();
}

class _ContainersState extends State<VerticalContainers> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      color: Colors.black12,
      child: ListView(
//        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(50),
        children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.apartment, color: Colors.blue, size: 50,),
              Text(
                'Logistic Management',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                "Created in tony's workspace",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_cart, color: Colors.orange, size: 50,),
              Text(
                'Order Management',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                "Created on Mar 14, 2018",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
  ),
    ]
  ),
  )
  );

}