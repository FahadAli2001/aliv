import 'package:aliv/const/colors.dart';
import 'package:aliv/const/icons.dart';
import 'package:aliv/const/paddings.dart';
import 'package:aliv/views/buy_tickets/buy_tickets_ticket_types_screen.dart';
import 'package:flutter/material.dart';

import '../../const/images.dart';

class BuyTicketsScreen extends StatefulWidget {
  const BuyTicketsScreen({super.key});

  @override
  State<BuyTicketsScreen> createState() => _BuyTicketsScreenState();
}

class _BuyTicketsScreenState extends State<BuyTicketsScreen> {
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
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: appSymerticPadding,
              vertical: appSymerticPadding - 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "2023 Booking Day",
                style: TextStyle(color: blueColor, fontWeight: FontWeight.bold),
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
                  padding: EdgeInsets.symmetric(horizontal: appSymerticPadding),
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
                padding: EdgeInsets.symmetric(vertical: appSymerticPadding),
                child: Container(
                  width: size.width,
                  height: size.height * 0.4,
                  //    color: Colors.grey,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: appSymerticPadding - 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const BuyTicketTicketTypesScreen()));
                                  },
                                  child: Container(
                                    width: size.width * 0.4,
                                    height: size.height * 0.18,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff13AEE1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        "A",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: size.height * 0.05),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: size.width * 0.4,
                                height: size.height * 0.18,
                                decoration: BoxDecoration(
                                    color: const Color(0xff13AEE1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "B",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * 0.05),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
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
        ));
  }
}
