import 'package:aliv/const/images.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../const/icons.dart';

class NewsAndUpdateDetailScreen extends StatefulWidget {
  const NewsAndUpdateDetailScreen({super.key});

  @override
  State<NewsAndUpdateDetailScreen> createState() =>
      _NewsAndUpdateDetailScreenState();
}

class _NewsAndUpdateDetailScreenState extends State<NewsAndUpdateDetailScreen> {
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
          "News & Updates",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(newsBanner), fit: BoxFit.fill)),
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Text(
                "Nassau, The Bahamas (May 11, 2023) – ALIV announced its sponsorship of the Boxing Day and New Year’s Day Junkanoo parades through a five-year, multi-level donation totaling three million dollars (\$3 million) over the course of the agreement. As the official title sponsor, ALIV has made the commitment to support the reintroduction of this traditional Bahamian Christmas experience by ensuring that Junkanoo is well-funded for its return after a nearly three-year hiatus. Preserving Bahamian culture is a crucial aspect of ALIV’s DNA, said ALIV’s CEO John Gomez. Being the title sponsor for one of the most valuable and time-honored Bahamian celebrations is a humbling experience for ALIV and the Cable Bahamas Group of Companies. We are in the business of connectivity, so what better way to connect The Bahamas through a cultural experience that is like none other globally? At ALIV, we are focused on the future as we continue to lead the cellular revolution and close the technology gap, we value down-home celebrations that truly highlight the best parts of what it means to be Bahamian. This is not the first cultural festivity that the telecommunications giant has supported. ALIV’s sponsorship of Junkanoo comes on the heels of being the title sponsor of the National Family Island Regatta earlier this year. By sponsoring Junkanoo, ALIV hopes to aid in broadening Junkanoo’s outstanding economic impact and as well as highlighting the tremendous talent of its Bahamian artisans. We pride ourselves on meaningful community engagement and building connections, said Amber Carey, Senior Director of Commercial. We couldn’t be more thrilled to pair our fastest network and innovation with the greatest show on earth. Through this partnership with the Junkanoo Corporation of New Providence, the public can expect a transformation of how they view and experience Junkanoo, both at home and on Bay Street. It is our hope that this partnership develops and expands the parade beyond our shores where the world can experience Junkanoo like they’ve never seen it before. We extend our heartfelt gratitude to ALIV, who is now the title sponsor for the annual Junkanoo parades in New Providence, for five (5) years, with a sponsorship value of \$3.1 million, in cash and in kind, said Dion Miller, the Chairman of the Junkanoo Corporation of New Providence. The sponsorship also allows us to engage in new initiatives, and move in new directions beyond the parades, as we embrace the power of Junkanoo to touch and change lives even more. [It also] demonstrates ALIV’s confidence in us, and their recognition of Junkanoo as the premier cultural event in The Bahamas.",
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
