import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swachh/constants.dart';
import 'package:swachh/views/chatbot.dart';
import 'package:swachh/views/home.dart';
import 'package:swachh/views/profile.dart';
import 'package:swachh/views/recylepoints.dart';
import 'package:swachh/views/scan.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _bottomNavIndex = 0;

  final List _pages = const [
    Home(),
    RecylePoints(),
    Scan(),
    ChatBot(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(top: _size.height / 150),
            child: Row(
              children: [
                Text(
                  'Hi, ',
                  style: TextStyle(
                      color: Constants().textColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sushant Dhiman',
                  style: TextStyle(
                      color: Constants().primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: _size.height / 150),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_outlined,
                    color: Constants().textColor,
                    size: 30,
                  )),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade200,
          selectedItemColor: Constants().primaryColor,
          unselectedItemColor: Constants().textColor,
          // elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              backgroundColor: Colors.grey.shade200,
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.location_on_outlined),
                label: 'Location',
                backgroundColor: Colors.grey.shade200),
            BottomNavigationBarItem(
                icon: const Icon(Icons.camera_alt_outlined),
                label: 'Location',
                backgroundColor: Colors.grey.shade200),
            BottomNavigationBarItem(
                icon: const Icon(Icons.chat_bubble_outline),
                label: 'Location',
                backgroundColor: Colors.grey.shade200),
            BottomNavigationBarItem(
                icon: const Icon(Icons.person_outline),
                label: 'Location',
                backgroundColor: Colors.grey.shade200),
          ],
          onTap: _onItemTapped,
          currentIndex: _bottomNavIndex,
        ),
        body: _pages.elementAt(_bottomNavIndex));
  }
}
