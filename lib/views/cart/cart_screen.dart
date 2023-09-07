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
      body: Padding(
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
                height: size.height * 0.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
