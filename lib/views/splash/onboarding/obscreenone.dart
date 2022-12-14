import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachh/constants.dart';
import 'package:swachh/views/authentication/signup.dart';
import 'package:swachh/views/splash/onboarding/onscreentwo.dart';
import 'package:swachh/views/splash/onboarding/widgets/onboardscreenwidget.dart';

class OnBoardOne extends StatelessWidget {
  OnBoardOne({Key? key}) : super(key: key);

  final constants = Get.put(Constants());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.backgroundColor,
      body: OnBoardScreenWidget(
        constants: constants,
        imagePath: 'assets/images/onboard/One.png',
        heading: 'An AI Based Camera',
        description:
            'Swachh has an inbuilt AI Camera which will tell either your waste is recyclable, reusable or reducable and which type of garbage bin to use for a particular waste product.',
        onNext: () {
          Get.off(OnBoardTwo());
        },
        onSkip: () {
          Get.off(const SignUp());
        },
      ),
    );
  }
}
