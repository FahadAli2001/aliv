import 'package:aliv/comman/custom_textfield.dart';
import 'package:aliv/const/icons.dart';
import 'package:aliv/const/images.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool upComingEvent = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color(0xffF1F5F5),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffF1F5F5),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                blackAppIcon,
                width: 50,
              ),
              SizedBox(
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(liveButton),
                    Image.asset(cartIcon),
                    Image.asset(chatIcon),
                    Image.asset(notificationIcon)
                  ],
                ),
              )
            ],
          )),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * .18,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: CustomTextField(
                    label: "Search events",
                    prefixIcon: Image.asset(searchIcon),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          upComingEvent = true;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "UpComing Events",
                            style: TextStyle(
                                color: upComingEvent == true
                                    ? Colors.deepOrange
                                    : Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          upComingEvent == true
                              ? const SizedBox(
                                  width: 180,
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.deepOrange,
                                  ),
                                )
                              : const SizedBox(
                                  width: 180,
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.white,
                                  ),
                                )
                        ],
                      ),
                    ),
                    //
                    InkWell(
                      onTap: () {
                        setState(() {
                          upComingEvent = false;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "NewsUpdate",
                            style: TextStyle(
                                color: upComingEvent == false
                                    ? Colors.deepOrange
                                    : Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          upComingEvent == false
                              ? const SizedBox(
                                  width: 180,
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.deepOrange,
                                  ),
                                )
                              : const SizedBox(
                                  width: 180,
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.white,
                                  ),
                                )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          //top container end here
          ListView(
            scrollDirection: Axis.vertical,
            children: [],
          )
        ],
      ),
    );
  }
}
/*
 Image.asset(liveButton),
          Image.asset(cartIcon),
          Image.asset(chatIcon),
          Image.asset(notificationIcon)
*/ 
