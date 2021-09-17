import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalContainers extends StatefulWidget {
  @override
  _ContainersState createState() => _ContainersState();
}

class _ContainersState extends State<HorizontalContainers> {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: Container(
        color: Colors.black12,
        child: ListView(
        scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(5),
            children: [
              Row(

                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.badge, color: Colors.red, size: 50,),
                        Text(
                          'Employee Management',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Shared by cathy34",
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
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.supervisor_account, color: Colors.greenAccent, size: 50,),
                        Text(
                          'Recruitment Management',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Shared by tony",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

              ),

            ]
        ),
      )
  );

}