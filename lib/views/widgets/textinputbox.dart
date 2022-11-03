import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachh/constants.dart';

class TextInputBox extends StatelessWidget {
  const TextInputBox(
      {Key? key,
      required this.constants,
      required this.icon,
      required this.hintText,
      required this.obscureText})
      : super(key: key);

  final Constants constants;
  final IconData icon;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height / 40),
      child: Container(
        width: Get.width / 1.2,
        height: Get.height / 15,
        decoration: BoxDecoration(
            color: constants.formBackground,
            borderRadius: BorderRadius.circular(15)),
        child: TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: Get.height / 55),
              prefixIcon: Padding(
                padding: EdgeInsets.only(top: Get.height / 130),
                child: Icon(icon, size: 25, color: Colors.grey.shade600),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
