import 'package:flutter/material.dart';

import '../../const/icons.dart';
import '../../const/images.dart';

class NewsAndUpdate extends StatelessWidget {
  const NewsAndUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
                child: Container(
                  width: size.width,
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(colorBanner), fit: BoxFit.fill)),
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
                                image: AssetImage(newsBanner),
                                fit: BoxFit.fill)),
                      ),
                      //
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Bhamas jukanos",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Text(
                          "Jukanoo Boxing Pride",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * 0.04),
                        ),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipisc sed do eiusmod tempor incididunt ut labore magna aliqua sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
