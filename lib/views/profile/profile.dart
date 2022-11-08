import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swachh/constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final constants = Get.put(Constants());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: Get.height / 15,
            ),
            Container(
              width: Get.width / 1.07,
              height: Get.height / 7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade400, blurRadius: 10)
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Get.width / 20),
                    child: Container(
                      width: Get.width / 6,
                      height: Get.height / 13,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/girlImage.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(200)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Get.width / 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Heavenly Demon',
                          style: TextStyle(
                              color: constants.primaryColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: Get.height / 70,
                        ),
                        Flexible(
                          child: Container(
                            width: Get.width / 1.5,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                              style: TextStyle(
                                  color: constants.textColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height / 30,
            ),
            Container(
              width: Get.width / 1.07,
              height: Get.height / 6.3,
              decoration: BoxDecoration(
                  color: Constants().primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: Get.height / 45, left: Get.width / 12),
                    child: const Text(
                      'Share the app',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Get.height / 80,
                        left: Get.width / 12,
                        right: Get.width / 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'with your friend & family and ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          Icons.arrow_right_alt_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Get.height / 80, left: Get.width / 12),
                    child: const Text(
                      'to save your Earth',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width / 4),
              child: Divider(
                color: Colors.grey.shade400,
                height: 40,
                thickness: 1,
              ),
            ),
            SettingsOption(
              constants: constants,
              icon: "assets/images/svgDustbin.svg",
              title: 'Recycle Items',
              iconSize: 20,
            ),
            SizedBox(height: Get.height / 40),
            SettingsOption(
              constants: constants,
              icon: "assets/images/reusessvg.svg",
              title: 'Reusable Items',
              iconSize: 22,
            ),
            SizedBox(height: Get.height / 40),
            SettingsOption(
              constants: constants,
              icon: "assets/images/savedBlogs.svg",
              title: 'Saved Blogs',
              iconSize: 27,
            ),
            SizedBox(height: Get.height / 40),
            SettingsOption(
              constants: constants,
              icon: "assets/images/location.svg",
              title: 'Saved Hotspots',
              iconSize: 27,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SettingsOption extends StatelessWidget {
  SettingsOption(
      {Key? key,
      required this.constants,
      required this.icon,
      required this.title,
      required this.iconSize})
      : super(key: key);

  final Constants constants;
  String icon;
  String title;
  double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.1,
      height: Get.height / 14,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 6)]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
                child: SvgPicture.asset(
                  icon,
                  width: iconSize,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  color: constants.textColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 20),
            child: SvgPicture.asset(
              "assets/images/rightarrow.svg",
              width: 20,
            ),
          )
        ],
      ),
    );
  }
}
