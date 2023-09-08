import 'package:aliv/comman/custom_textfield.dart';
import 'package:aliv/const/images.dart';
import 'package:aliv/const/paddings.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../const/icons.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(backIcon)),
        title: const Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Image.asset(orangeTimerIcon),
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.025, right: size.width * 0.06),
            child: Text(
              "4m : 06s",
              style: TextStyle(color: redColor),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: appSymerticPadding, vertical: appSymerticPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Year Parade (05)",
                style: TextStyle(
                    fontSize: size.width * 0.045, fontWeight: FontWeight.bold),
              ),
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: appSymerticPadding),
                child: Container(
                  width: size.width,
                  // height: size.height * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: appSymerticPadding),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: appSymerticPadding - 10,
                          ),
                          child: Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "Tikcet No",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: size.width * 0.025,
                              ),
                              const Text(
                                "Section",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: size.width * 0.025,
                              ),
                              const Text(
                                "Row",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: size.width * 0.025,
                              ),
                              const Text(
                                "Seat",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: size.width * 0.025,
                              ),
                              const Text(
                                "Price",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        //
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        //
                        for (var i = 0; i < 3; i++) ...[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: appSymerticPadding - 10,
                                vertical: appSymerticPadding - 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "J-98522245",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                const Text(
                                  "A",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                const Text(
                                  "02",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                const Text(
                                  "11",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                const Text(
                                  "\$260.00",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                Image.asset(redCloseIcon)
                              ],
                            ),
                          ),

                          //
                          const Divider(
                            color: Colors.grey,
                            height: 0.1,
                            thickness: 1,
                          )
                        ]
                      ],
                    ),
                  ),
                ),
                //
              ),

              //
              Container(
                width: size.width,
                height: size.height * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      //  horizontal: appSymerticPadding - 10,
                      vertical: appSymerticPadding - 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: appSymerticPadding,
                            vertical: appSymerticPadding - 15),
                        child: Text(
                          'Discount Code',
                          style: TextStyle(
                              color: Colors.grey, fontSize: size.width * 0.04),
                        ),
                      ),
                      //

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0),
                        child: CustomTextField(
                          label: "Enter Code",
                          suffixIcon: Image.asset(applyButton),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              Container(
                width: size.width,
                height: size.height * 0.17,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: appSymerticPadding - 10,
                      vertical: appSymerticPadding - 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub Total',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: size.width * 0.04),
                          ),
                          Text(
                            '\$260.00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      //
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Disccount',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: size.width * 0.04),
                          ),
                          Text(
                            '\$260.00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      //
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'VAT',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: size.width * 0.04),
                          ),
                          Text(
                            '\$260.00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      //
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      )
                    ],
                  ),
                ),
              ),
              //
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: appSymerticPadding - 10),
                child: Row(
                  children: [
                    Image.asset(purpleCheckbox),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    const Text(
                      "Please accept our terms and policy",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      //
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
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
                          //             const CartScreen()));
                        },
                        child: Image.asset(buyTicketButton))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
