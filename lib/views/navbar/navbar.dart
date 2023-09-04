import 'package:aliv/views/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../const/icons.dart';
import '../events/event_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;

  final pages = [
    const Home(
      index: 0,
    ),
    const EventScreen(
      index: 1,
    )
  ];

  void handleNavBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      bottomNavigationBar: Container(
        width: size.width,
        height: 60,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    handleNavBar(0);
                  },
                  child: currentIndex == 0
                      ? Image.asset(purpleHomeIcon)
                      : Image.asset(transHomeIcon)),
              InkWell(
                  onTap: () {
                    handleNavBar(1);
                  },
                  child: currentIndex == 1
                      ? Image.asset(purpleCart)
                      : Image.asset(transCart)),
            ],
          ),
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
