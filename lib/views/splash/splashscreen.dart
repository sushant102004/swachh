import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swachh/constants.dart';
import 'package:swachh/controllers/splashController.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashController = Get.put(SplashController());

  @override
  void initState() {
    super.initState();
    callSetScreen();
  }

  void callSetScreen() {
    Timer(const Duration(seconds: 4), () => {splashController.setScreen()});
  }

  final constants = Get.put(Constants());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.primaryColor,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Get.height / 2.4),
              child: SvgPicture.asset('assets/images/splashLogo.svg'),
            ),
            Padding(
              padding: EdgeInsets.only(top: Get.height / 2.3),
              child: Text(
                'Designed & Developed with ❤️ by GDSC MM(DU)',
                style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
