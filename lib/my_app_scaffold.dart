import 'package:flutter/material.dart';
import 'package:flutter_2/my_app_sized_box.dart';

class MyAppScaffold extends StatelessWidget {
  const MyAppScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1F),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F1F1F),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 20,
            bottom: 75,
          ),
          child: Column(
            spacing: 20,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Match Highlight",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFEAEAEA),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF8D8D8D),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 12,
                  children: [
                    MyAppSizedBox(
                      images1: "assets/pic1.jpg",
                      images2: "assets/premiere_league.png",
                      title1: "MAN. UNITED",
                      title2: "VS NEWCASTLE",
                      title3: "02:31",
                    ),
                    MyAppSizedBox(
                      images1: "assets/Group 827.png",
                      images2: "assets/1340920153.png",
                      title1: "ATL. MADRID",
                      title2: "VS VILLAREAL",
                      title3: "02:19",
                    ),
                    MyAppSizedBox(
                      images1: "assets/image3.png",
                      images2: "assets/Group 850.png",
                      title1: "SAMPDORIA",
                      title2: "VS INTER",
                      title3: "02:01",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
