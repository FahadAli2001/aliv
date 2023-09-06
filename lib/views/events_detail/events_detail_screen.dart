import 'package:aliv/const/colors.dart';
import 'package:aliv/const/icons.dart';
import 'package:aliv/const/images.dart';
import 'package:aliv/views/speaker_details/speakers_detail_screen.dart';
import 'package:flutter/material.dart';

class EventDetailsScreen extends StatefulWidget {
  const EventDetailsScreen({super.key});

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
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
            "Event Details",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: size.width,
              height: size.height * 0.25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(detailBanner), fit: BoxFit.fill)),
            ),
            //
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "2023 Boxing Day",
                    style: TextStyle(color: blueColor),
                  ),
                  Image.asset(
                    orangeShareButton,
                    scale: 0.75,
                  )
                ],
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Junkanoo Parade Powered by ALIV",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: size.height * 0.02),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                children: [
                  Image.asset(clockIcon),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Sun dec 25",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset(locationIcon),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Bay street",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    orangeDirectionButton,
                    scale: 0.75,
                  )
                ],
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                children: [
                  Image.asset(personsIcon),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "76 people are interesteds",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            //
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Text(
                "Weather Forecast",
                style: TextStyle(
                    color: Colors.grey, fontSize: size.height * 0.025),
              ),
            ),
            //
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Row(
                children: [
                  Image.asset(
                    blueClouds,
                    scale: 0.7,
                  ),
                  //
                  const SizedBox(
                    width: 15,
                  ),
                  //
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "59",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "Mostly Cloudy",
                        style: TextStyle(fontSize: 15, color: Colors.orange),
                      ),
                    ],
                  ),
                  //
                  const SizedBox(
                    width: 15,
                  ),
                  //
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Precimitation 25%",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Humidity 100%",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Wind 6mph",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: Text(
                "This annual tradition has evolved and been around since the 1900s. Groups spend tireless hours and months preparing for this street parade. After an almost two-year hiatus, Junkanoo will come alive on Bay Street the evening of December 25th and into the wee hours of the morning on Boxing Day. Prepare to be captivated by the mesmerizing display of costumes, dance routines and the pulsating sounds of the goat skin drums.",
                style: TextStyle(fontSize: 15),
              ),
            ),
            //
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
              child: Text(
                "Speakers",
                style: TextStyle(
                    fontSize: size.height * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            //
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7),
              child: SizedBox(
                width: size.width,
                height: size.height * 0.4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SpeakerDetailScreen()));
                      },
                      child: Container(
                        width: size.width * 0.7,
                        // color: Colors.amber,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 50,
                              left: 5,
                              child: Container(
                                width: size.width * 0.68,
                                height: size.height * 0.33,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.2), // Shadow color
                                      spreadRadius: 3, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset: const Offset(0, 2), // Offset
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Guest Speaker",
                                        style: TextStyle(
                                            color: blueColor,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      //
                                      const Text(
                                        "Jessica",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "Director of human resources",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      const Text(
                                        "Director of human resources manageing director etc etc etc",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(fbIcon),
                                          Image.asset(twitterIcon),
                                          Image.asset(instagramIcon),
                                          Image.asset(youtubeIcon)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 50,
                              right: 50,
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //---------
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
              child: Text(
                "Sponsers",
                style: TextStyle(
                    fontSize: size.height * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            //
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: Image.asset(nascentSponser),
            )
          ]),
        ),
        bottomNavigationBar: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.09,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(colorBanner), fit: BoxFit.fill)),
            ),
            Positioned(
              top: 6,
              child: Container(
                width: size.width,
                height: size.height * 0.095,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Starting From",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 10),
                          ),
                          Text(
                            "\$65.00",
                            style: TextStyle(
                                color: blueColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      //
                      Image.asset(buyTicketButton)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
