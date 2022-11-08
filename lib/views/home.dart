import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swachh/constants.dart';
import 'package:swachh/views/news.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(top: _size.height / 150),
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
            padding: EdgeInsets.only(top: _size.height / 150),
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
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _size.width / 23),
              child: Divider(
                color: Colors.grey.shade500,
                height: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.height / 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: _size.height / 7.5,
                    width: _size.width / 2.2,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(blurRadius: 5, color: Colors.grey.shade400)
                        ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: _size.height / 60, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/images/dustbin.png',
                              ),
                              RichText(
                                text: TextSpan(
                                    text: "72",
                                    style: TextStyle(
                                        color: Constants().textColor,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Satoshi'),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: " Past",
                                          style: TextStyle(
                                              color: Constants().textColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w100,
                                              fontFamily: 'Satoshi'))
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: _size.height / 80),
                          child: Text(
                            'Recyleable Items',
                            style: TextStyle(
                                color: Constants().primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: _size.height / 7.5,
                    width: _size.width / 2.2,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(blurRadius: 5, color: Colors.grey.shade400)
                        ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: _size.height / 60, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/images/reuse.png',
                              ),
                              RichText(
                                text: TextSpan(
                                    text: "36",
                                    style: TextStyle(
                                        color: Constants().textColor,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Satoshi'),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: " Past",
                                          style: TextStyle(
                                              color: Constants().textColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w100,
                                              fontFamily: 'Satoshi'))
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: _size.height / 80),
                          child: Text(
                            'Reuseable Items',
                            style: TextStyle(
                                color: Constants().primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
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
                        top: _size.height / 80,
                        left: _size.width / 16,
                        right: _size.width / 16),
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
            InkWell(
              onTap: () {
                Get.to(const News());
              },
              child: Container(
                width: _size.width / 1.15,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400, width: 1.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.all(_size.height / 50),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://www.shutterstock.com/image-photo/team-dedicated-smiling-volunteers-collecting-600w-2164781925.jpg',
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
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
                        right: _size.width / 18,
                        bottom: _size.width / 25),
                    child: const Text(
                      'Each year, Plastic Free July encourages companies and individuals to analyse how much plastic they throw away.',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ]),
              ),
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
