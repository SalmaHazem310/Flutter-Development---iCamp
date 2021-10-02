import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sprints/utils.dart';

import 'User.dart';

class UserData extends StatefulWidget {
  User user;
  UserData({this.user});

  @override
  _UserDataState createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${widget.user.name}"),
        ),
        InkWell(onTap: () {
          launchURL("tel:${widget.user.phone}");
        },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${widget.user.phone}"),
          ),
        ),
        InkWell(onTap: () {
          launchURL("mailto:${widget.user.email}?subject=newSubject &body=New Email");
        },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${widget.user.email}"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${widget.user.id}"),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${widget.user.username}"),
        ),
        InkWell( onTap: (){
          launchURL("http://${widget.user.website}");
        },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${widget.user.website}"),
          ),
        ),
      ],
      ),
      );
    }
  }
