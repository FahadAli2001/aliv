import 'package:aliv/const/images.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.15,
              color: appBarColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(purpleNoti),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "aliv jukano",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: size.width * 0.3,
                              ),
                              const Text(
                                "10:00 pm",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          const Text(
                            "@aliv jukano",
                            style: TextStyle(color: Colors.grey),
                          ),
                          const Text(
                            "@aliov jukan123456879456456456456464",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    //
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
