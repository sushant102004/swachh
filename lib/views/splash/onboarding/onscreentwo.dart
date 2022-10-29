import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachh/constants.dart';
import 'package:swachh/views/authentication/signup.dart';
import 'package:swachh/views/splash/onboarding/obscreenthree.dart';
import 'package:swachh/views/splash/onboarding/widgets/onboardscreenwidget.dart';

class OnBoardTwo extends StatelessWidget {
  OnBoardTwo({Key? key}) : super(key: key);

  final constants = Get.put(Constants());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.backgroundColor,
      body: OnBoardScreenWidget(
        constants: constants,
        imagePath: 'assets/images/onboard/Two.png',
        heading: 'A Smart Chatbot',
        description:
            'In case, you have some issues disposing a particular type of waste or have some doubts, queries regarding something related to waste management you can reach out to Swachh smart chatbot',
        onNext: () {
          Get.off(OnBoardThree());
        },
        onSkip: () {
          Get.off(const SignUp());
        },
      ),
    );
  }
}
