import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swachh/constants.dart';
import 'package:swachh/views/dashboard.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final constants = Get.put(Constants());
  @override
  Widget build(BuildContext context) {
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
                              'Sign Up',
                              style: TextStyle(
                                  color: constants.primaryColor,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' into your account.',
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
                        icon: Icons.person_outline,
                        hintText: 'Full Name',
                        obscureText: false,
                      ),
                      TextInputBox(
                        constants: constants,
                        icon: Icons.email_outlined,
                        hintText: 'E-Mail',
                        obscureText: false,
                      ),
                      TextInputBox(
                        constants: constants,
                        icon: Icons.lock_outline,
                        hintText: 'Password',
                        obscureText: true,
                      ),
                      SizedBox(
                        height: Get.height / 30,
                      ),
                      InkWell(
                        onTap: () {
                          Get.off(Dashboard(
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
                        padding: EdgeInsets.only(top: Get.height / 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: Get.width / 3,
                              child: Divider(
                                color: Colors.grey.shade500,
                                thickness: 0.5,
                              ),
                            ),
                            Text(
                              ' or ',
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 16),
                            ),
                            SizedBox(
                              width: Get.width / 3,
                              child: Divider(
                                color: Colors.grey.shade500,
                                thickness: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: Get.height / 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/google.svg',
                              width: 35,
                            ),
                            SizedBox(width: Get.width / 20),
                            SvgPicture.asset(
                              'assets/images/apple.svg',
                              width: 30,
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: Get.height / 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have account? ',
                              style: TextStyle(
                                  color: constants.textColor, fontSize: 15),
                            ),
                            Text(
                              'Login Now',
                              style: TextStyle(
                                  color: constants.primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
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
