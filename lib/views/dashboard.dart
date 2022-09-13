import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:swachh/constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(top: _size.height / 27),
          child: Row(
            children: [
              Text(
                'Hi, ',
                style: TextStyle(
                    color: Constants().textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Sushant Dhiman',
                style: TextStyle(
                    color: Constants().primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: _size.height / 44),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Constants().textColor,
                  size: 30,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _size.width / 23),
              child: Divider(
                color: Colors.grey.shade500,
                height: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.height / 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: _size.height / 6,
                    width: _size.width / 2.2,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(blurRadius: 5, color: Colors.grey.shade400)
                        ]),
                  ),
                  Container(
                    height: _size.height / 6,
                    width: _size.width / 2.2,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(blurRadius: 5, color: Colors.grey.shade400)
                        ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _size.width / 3.5),
              child: Divider(
                height: 50,
                color: Colors.grey.shade500,
              ),
            ),
            Container(
              height: _size.height / 6.5,
              width: _size.width / 1.2,
              decoration: BoxDecoration(
                  color: Constants().primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: _size.height / 45, left: _size.width / 16),
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
                        top: _size.height / 80, left: _size.width / 16),
                    child: const Text(
                      'with your friend & family and ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: _size.height / 80, left: _size.width / 16),
                    child: const Text(
                      'earn Amazon Vouchers',
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
              padding: EdgeInsets.symmetric(horizontal: _size.width / 2.5),
              child: Divider(
                height: 50,
                color: Colors.grey.shade500,
                thickness: 1.3,
              ),
            ),
            Text(
              'Read interesting blogs',
              style: TextStyle(
                  color: Constants().textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: _size.width / 1.15,
              height: _size.height / 3,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400, width: 1.2),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: _size.height / 30),
                  child: Image.asset(
                    'assets/images/news.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: _size.height / 80),
                  child: Text(
                    'Who produce the most plastic waste?',
                    style: TextStyle(
                        color: Constants().primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height / 100,
                      left: _size.width / 18,
                      right: _size.width / 18),
                  child: const Text(
                    'Each year, Plastic Free July encourages companies and individuals to analyse how much plastic they throw away.',
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.justify,
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
