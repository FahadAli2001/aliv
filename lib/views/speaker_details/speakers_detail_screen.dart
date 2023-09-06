import 'package:aliv/const/colors.dart';
import 'package:aliv/const/icons.dart';
import 'package:aliv/const/images.dart';
import 'package:aliv/const/paddings.dart';
import 'package:flutter/material.dart';

class SpeakerDetailScreen extends StatefulWidget {
  const SpeakerDetailScreen({super.key});

  @override
  State<SpeakerDetailScreen> createState() => _SpeakerDetailScreenState();
}

class _SpeakerDetailScreenState extends State<SpeakerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Text(
          "Speakers Details",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: size.width,
            height: size.height * 0.28,
            child: Stack(
              children: [
                // banner container
                Container(
                  width: size.width,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage(detailBanner), fit: BoxFit.cover)),
                ),
                //profile image
                Positioned(
                  top: size.height * 0.14,
                  left: size.width * 0.1,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(girlImage),
                    radius: size.height * 0.07,
                  ),
                ),
              ],
            ),
          ),
          //
          SizedBox(
            height: size.height * 0.03,
          ),
          //
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appSymerticPadding),
            child: Text(
              "Guest Speaker",
              style: TextStyle(color: blueColor, fontSize: size.width * 0.033),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: appSymerticPadding, vertical: size.height * 0.01),
            child: Text(
              "James Smith",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: size.width * 0.05),
            ),
          ),
          //
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appSymerticPadding),
            child: Text(
              "Director of Human Resources",
              style:
                  TextStyle(color: Colors.orange, fontSize: size.width * 0.032),
            ),
          ),
          //
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: appSymerticPadding, vertical: size.height * 0.02),
            child: Text(
              "This annual tradition has evolved and been around since the 1900s. Groups spend tireless hours and months preparing for this street parade. After an almost two-year hiatus, Junkanoo will come alive on Bay Street the evening of December 25th and into the wee hours of the morning on Boxing Day. Prepare to be captivated by the mesmerizing display of costumes, dance routines and the pulsating sounds of the goat skin drums.",
              style: TextStyle(fontSize: size.width * 0.035),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appSymerticPadding),
            child: Row(
              children: [
                Image.asset(blueLinkIcon),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Text(
                  "www.speakersconference.com",
                  style: TextStyle(
                    fontSize: size.width * 0.035,
                  ),
                ),
              ],
            ),
          ),
          //
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: appSymerticPadding, vertical: size.height * 0.02),
            child: Text(
              "Social Profiles",
              style: TextStyle(
                  fontSize: size.width * 0.045,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          //
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appSymerticPadding),
            child: Row(
              children: [
                Image.asset(fbIcon),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Image.asset(instagramIcon),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Image.asset(twitterIcon),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Image.asset(youtubeIcon)
              ],
            ),
          )
        ],
      ),
    );
  }
}
