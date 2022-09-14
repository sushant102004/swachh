import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachh/views/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Dashboard(),
      theme: ThemeData(fontFamily: 'Satoshi'),
    );
  }
}
