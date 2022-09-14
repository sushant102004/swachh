import 'package:flutter/material.dart';

class RecylePoints extends StatefulWidget {
  const RecylePoints({Key? key}) : super(key: key);

  @override
  State<RecylePoints> createState() => _RecylePointsState();
}

class _RecylePointsState extends State<RecylePoints> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Recyle Points'),
      ),
    );
  }
}
