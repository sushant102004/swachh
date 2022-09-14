import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swachh/constants.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({Key? key}) : super(key: key);

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: _size.height / 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi,',
                  style: TextStyle(
                    fontSize: 40,
                    color: Constants().textColor,
                  ),
                ),
                Text(
                  ' Sushant Dhiman',
                  style: TextStyle(
                      fontSize: 40,
                      color: Constants().primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Image.asset('assets/images/chatbot.png'),
          Text(
            'Welcome Back',
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'How may I help you today',
            style: TextStyle(
                color: Constants().textColor,
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(top: _size.height / 15),
            child: Container(
              height: _size.height / 14,
              width: _size.height / 14,
              decoration: BoxDecoration(
                  color: Constants().primaryColor,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mic_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
