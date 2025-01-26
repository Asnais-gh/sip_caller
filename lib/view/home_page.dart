

import 'package:flutter/material.dart';

import '../const.dart';
import 'pages/call_history_page.dart';
import 'pages/contacts_page.dart';
import 'pages/dialpad_page.dart';
import 'pages/setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const DialPadPage(),
    const ContactsPage(),
    const CallHistoryPage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    // Get screen width and height for responsive adjustments
    final Size screenSize = MediaQuery.of(context).size;
    // Size(411.4285714285714, 890.2857142857143.3)
    final double iconsize = screenSize.width * 0.0850694444444445; // 35.0

    return Container(
      height: 50,
      decoration: BoxDecoration(
        gradient: kGradient,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(screenSize.width * 0.0486111111111111),
          topRight: Radius.circular(screenSize.width * 0.0486111111111111),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? Icon(
                    Icons.dialpad,
                    color: Colors.white,
                    size: iconsize,
                  )
                : Icon(
                    Icons.dialpad_outlined,
                    color: Colors.white,
                    size: iconsize,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? Icon(
                    Icons.contacts,
                    color: Colors.white,
                    size: iconsize,
                  )
                : Icon(
                    Icons.contacts_outlined,
                    color: Colors.white,
                    size: iconsize,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? Icon(
                    Icons.history,
                    color: Colors.white,
                    size: iconsize,
                  )
                : Icon(
                    Icons.history_outlined,
                    color: Colors.white,
                    size: iconsize,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: iconsize,
                  )
                : Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                    size: iconsize,
                  ),
          ),
        ],
      ),
    );
  }
}
