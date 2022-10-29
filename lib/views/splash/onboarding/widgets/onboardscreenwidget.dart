import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachh/constants.dart';

class OnBoardScreenWidget extends StatelessWidget {
  OnBoardScreenWidget(
      {Key? key,
      required this.constants,
      required this.imagePath,
      required this.description,
      required this.heading,
      required this.onSkip,
      required this.onNext})
      : super(key: key);

  final Constants constants;
  final String imagePath;
  final String heading;
  final String description;
  Function() onSkip;
  Function() onNext;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: Get.height / 1.7,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.only(top: Get.height / 20),
          child: Text(
            heading,
            style: TextStyle(
                color: constants.onBoardText,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: Get.height / 70,
              left: Get.width / 40,
              right: Get.width / 40),
          child: Text(
            description,
            style: TextStyle(color: constants.textColor, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: Get.height / 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: onSkip,
                child: Container(
                  height: Get.height / 18,
                  width: Get.width / 2.8,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade600),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Skip',
                      style:
                          TextStyle(color: constants.textColor, fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: Get.width / 20,
              ),
              InkWell(
                onTap: onNext,
                child: Container(
                  height: Get.height / 18,
                  width: Get.width / 2.8,
                  decoration: BoxDecoration(
                      color: constants.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: constants.backgroundColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
