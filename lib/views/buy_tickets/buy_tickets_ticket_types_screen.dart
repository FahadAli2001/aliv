import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../const/icons.dart';
import '../../const/images.dart';
import '../../const/paddings.dart';

class BuyTicketTicketTypesScreen extends StatefulWidget {
  const BuyTicketTicketTypesScreen({super.key});

  @override
  State<BuyTicketTicketTypesScreen> createState() =>
      _BuyTicketTicketTypesScreenState();
}

class _BuyTicketTicketTypesScreenState
    extends State<BuyTicketTicketTypesScreen> {
  bool bottomBar = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          actions: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: appSymerticPadding - 10),
              child: Image.asset(cartIcon),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appSymerticPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "2023 Booking Day",
                  style:
                      TextStyle(color: blueColor, fontWeight: FontWeight.bold),
                ),
                //
                Text(
                  "Jukanoo Parade Pwered by Aliv",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.05),
                ),

                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
                  child: const Text(
                    "Select Section to book ticket",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                //
                Container(
                  width: size.width,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: appSymerticPadding),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "VIP A",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
                  child: const Text(
                    "Ticket  Types",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.asset("assets/ticket_types.png"),
                ),
                //
                Container(
                  width: size.width,
                  height: size.height * 0.5,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          bottomBar = true;
                          setState(() {});
                        },
                        child: Container(
                          width: size.width,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/seating_detail.png"),
                                  fit: BoxFit.cover)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        //
        bottomNavigationBar: bottomBar == true
            ? Stack(
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "06 : Tickets Added",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: size.width * 0.03),
                                ),
                                Text(
                                  "Total :\$65.00",
                                  style: TextStyle(
                                      color: blueColor,
                                      fontSize: size.width * 0.06,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            //
                            InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             const BuyTicketsScreen()));
                                },
                                child: Image.asset(buyTicketButton))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : null);
  }
}
