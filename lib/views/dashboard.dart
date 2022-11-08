import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swachh/constants.dart';
import 'package:swachh/views/camera.dart';
import 'package:swachh/views/camera1.dart';
import 'package:swachh/views/cameraScreen.dart';
import 'package:swachh/views/chatbot.dart';
import 'package:swachh/views/home.dart';
import 'package:swachh/views/profile/profile.dart';
import 'package:swachh/views/recylepoints.dart';
import 'package:swachh/views/scan.dart';

List<CameraDescription>? camera;

class Dashboard extends StatefulWidget {
  final List<CameraDescription> camerasList;
  const Dashboard({required this.camerasList, Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _bottomNavIndex = 0;

  late final List _pages;

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  getCameras() async {
    camera = await availableCameras();
    print(camera!.length);
  }

  getPages() {
    _pages = [
      Home(),
      RecylePoints(),
      // CameraPage(),
      CameraScreen(
        cameras: widget.camerasList,
      ),
      ChatBot(),
      Profile(),
    ];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPages();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    // cameras = await availableCameras();
    // getCameras();
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
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
                label: 'Scan',
                backgroundColor: Colors.grey.shade200),
            BottomNavigationBarItem(
                icon: const Icon(Icons.chat_bubble_outline),
                label: 'ChatBot',
                backgroundColor: Colors.grey.shade200),
            BottomNavigationBarItem(
                icon: const Icon(Icons.person_outline),
                label: 'Profile',
                backgroundColor: Colors.grey.shade200),
          ],
          onTap: _onItemTapped,
          currentIndex: _bottomNavIndex,
        ),
        body: _pages.elementAt(_bottomNavIndex));
  }
}
