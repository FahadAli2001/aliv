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
      bottomNavigationBar: Container(
        width: size.width,
        height: 60,
        color: Colors.white,
      ),
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
          Expanded(
            // width: size.width,
            // height: size.height,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 30),
                      child: Container(
                        width: size.width,
                        height: size.height * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(colorBanner),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 30.0),
                      child: Container(
                        width: size.width,
                        height: size.height * 0.49,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width,
                              height: size.height * .2,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  // color: Colors.amber,
                                  image: DecorationImage(
                                      image: AssetImage(detailBanner),
                                      fit: BoxFit.fill)),
                            ),
                            //
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "2023 boxing day",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                            //
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Text(
                                "Jukanoo Parade powered by ALIV",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.04),
                              ),
                            ),
                            //
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: [
                                  Image.asset(clockIcon),
                                  Text(
                                    "Dec 2023, Sun at 10:00 pm",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: size.width * 0.04),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: [
                                  Image.asset(locationIcon),
                                  Text(
                                    "Bay Street",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: size.width * 0.04),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: [
                                  Image.asset(weatherIcon),
                                  Text(
                                    "Mostly Cloudy",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: size.width * 0.04),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: [
                                  Image.asset(personsIcon),
                                  Text(
                                    "76 people are interested",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: size.width * 0.04),
                                  ),
                                ],
                              ),
                            ),
                            //
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Starting from",
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: size.width * 0.03),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "\$65.00",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: size.width * 0.05),
                                      ),
                                    ],
                                  ),
                                  //
                                  Image.asset(favIcon),
                                  Image.asset(buyTicketButton)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
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
