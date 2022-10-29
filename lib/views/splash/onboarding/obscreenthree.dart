import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachh/constants.dart';
import 'package:swachh/views/authentication/signup.dart';
import 'package:swachh/views/splash/onboarding/widgets/onboardscreenwidget.dart';

class OnBoardThree extends StatelessWidget {
  OnBoardThree({Key? key}) : super(key: key);

  final constants = Get.put(Constants());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.backgroundColor,
      body: OnBoardScreenWidget(
        constants: constants,
        imagePath: 'assets/images/onboard/Three.png',
        heading: 'Find Nearby Location',
        description:
            'To properly manage wastes , Swachh has an inbuilt map which will guide you to your nearby waste managements hotspots.',
        onNext: () {
          Get.off(const SignUp());
        },
        onSkip: () {
          Get.off(const SignUp());
        },
      ),
    );
  }
}
