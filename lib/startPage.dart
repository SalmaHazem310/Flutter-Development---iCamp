import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:sprints/User.dart';
import 'package:sprints/settingsScreen.dart';
import 'package:sprints/userData.dart';
import 'package:sprints/userService.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  List<User> usersList = [];
  bool isLoading = true;

  getUserList() async {
    usersList = await UserService().getUser();
    isLoading = false;
    setState(() {

    });
  }
  @override
  void initState() {
    super.initState();
    getUserList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center (
        child: CircularProgressIndicator(),
      )
          : GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
        itemCount: usersList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserData(user: usersList[index],),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.people, size: 30,color: Colors.pink,),
                          Text("${usersList[index].name}",),
                        ],
                      ),
                    )
                ),
              )
          );
        },
      ),
    );
  }
}
