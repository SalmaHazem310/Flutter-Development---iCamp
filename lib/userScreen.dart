import 'package:flutter/material.dart';
import 'package:sprints/User.dart';
import 'package:sprints/settingsScreen.dart';
import 'package:sprints/startPage.dart';
import 'package:sprints/userData.dart';
import 'package:sprints/userService.dart';

import 'Login.dart';
import 'getStarted.dart';

class UserScereen extends StatefulWidget {
  @override
  _UserScereenState createState() => _UserScereenState();
}

class _UserScereenState extends State<UserScereen> {
  int currentIndex = 0;
  List<Widget> pages = [
    StartPage(),
    SettingsScreen(),
    Login()
  ];



  void _onItemTapped(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[currentIndex]);
  }
}
