import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sprints/userService.dart';

import 'User.dart';

class UserData extends StatefulWidget {
  @override
  _UserDataState createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  List<User> usersList = [];
  bool isLoading = true;
  int index = 0;

  getUserList() async {
    usersList = await UserService().getUser();
    isLoading = false;
    setState(() {});
  }
  getIndex() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    index = prefs.getInt("index")?? 0;
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();
    getIndex();
    print(index);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Text("${index}"),
//          Text("${usersList[index].email}, ${usersList[index].phone}"),
        ]
        ),
      );
    }
  }
