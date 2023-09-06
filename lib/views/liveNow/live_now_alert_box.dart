import 'package:aliv/const/colors.dart';
import 'package:aliv/const/icons.dart';
import 'package:aliv/const/images.dart';
import 'package:aliv/const/paddings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveNowAlertBox extends StatelessWidget {
  const LiveNowAlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      content: Builder(builder: (context) {
        var height = MediaQuery.of(context).size.height;
        var width = MediaQuery.of(context).size.width;
        return Container(
          width: width,
          height: height / 2,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: appSymerticPadding),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: appSymerticPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(liveButton),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.cancel,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                //
                Padding(
                  padding: EdgeInsets.symmetric(vertical: appSymerticPadding),
                  child: Image.asset(
                    newsBanner,
                    width: width,
                    height: height * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
                //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: appSymerticPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Booking Day",
                        style: TextStyle(
                            color: blueColor,
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.03),
                      ),
                      Image.asset(
                        orangeShareButton,
                        scale: 0.8,
                      )
                    ],
                  ),
                ),
                //
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: appSymerticPadding, vertical: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Jukanoo Booking Day",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: width * 0.044),
                    ),
                  ),
                ),
                //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: appSymerticPadding),
                  child: Row(
                    children: [
                      Image.asset(
                        clockIcon,
                        scale: 0.8,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        "5:00 clock",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.03),
                      ),
                    ],
                  ),
                ),
                //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: appSymerticPadding),
                  child: Row(
                    children: [
                      Image.asset(
                        locationIcon,
                        scale: 0.8,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        "Bay Street , London",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.03),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
