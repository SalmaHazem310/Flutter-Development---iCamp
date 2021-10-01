import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sprints/User.dart';
import 'package:sprints/userData.dart';
import 'package:sprints/userService.dart';

class UserScereen extends StatefulWidget {
  @override
  _UserScereenState createState() => _UserScereenState();
}

class _UserScereenState extends State<UserScereen> {
  List<User> usersList = [];
  bool isLoading = true;

  getUserList() async
  {
    usersList = await UserService().getUser();
    isLoading = false;
    setState(() {

    });
  }
//  saveData() async
//  {
//    SharedPreferences preferences = await SharedPreferences.getInstance();
//    for (var i in usersList) {
//      preferences.setString("Data", usersList[i].phone);
//    }
//
//
//  }
  @override
  void initState() {
    super.initState();
    getUserList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading
      ? Center (
        child: CircularProgressIndicator(),
      )
      : ListView.builder(
          itemCount: usersList.length,
          itemBuilder: (BuildContext context, int index) {
            saveIndex() async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setInt("index", index);
            }
            saveIndex();
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => UserData(),
                ),
                );
              },
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${usersList[index].name}"),
              ),
              trailing: Icon(Icons.people),
            );
            },
      ),
    );
  }
}
