import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swachh/constants.dart';
import 'package:swachh/views/authentication/login.dart';
import 'package:swachh/views/authentication/signup.dart';
import 'package:swachh/views/dashboard.dart';
import 'package:swachh/views/widgets/textinputbox.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final constants = Get.put(Constants());
    return Scaffold(
      backgroundColor: constants.primaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: Get.height / 15, bottom: Get.height / 15),
                  child: SvgPicture.asset('assets/images/splashLogo.svg'),
                ),
                Container(
                  width: double.infinity,
                  height: Get.height / 1.3,
                  decoration: BoxDecoration(
                      color: constants.backgroundColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: Get.height / 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Forgot',
                              style: TextStyle(
                                  color: constants.primaryColor,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' my Password',
                              style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: Get.height / 40,
                      ),

                      // Form

                      TextInputBox(
                        constants: constants,
                        icon: Icons.email_outlined,
                        hintText: 'E-Mail',
                        obscureText: false,
                      ),

                      SizedBox(
                        height: Get.height / 30,
                      ),
                      InkWell(
                        onTap: () {
                          Get.off(const Dashboard(
                            camerasList: [],
                          ));
                        },
                        child: Container(
                          width: Get.width / 2.8,
                          height: Get.height / 16,
                          decoration: BoxDecoration(
                              color: constants.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  color: constants.backgroundColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: Get.height / 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Go back to ',
                              style: TextStyle(
                                  color: constants.textColor, fontSize: 15),
                            ),
                            InkWell(
                              onTap: () {
                                Get.off(const Login());
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: constants.primaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
