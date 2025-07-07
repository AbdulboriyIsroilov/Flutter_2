import 'package:flutter/material.dart';
import 'package:flutter_2/my_app_sized_box.dart';
import 'package:flutter_2/plant_card_container.dart';
import 'package:flutter_2/my_app_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                // PlantCard(
                //   str1: "Single Team Access",
                //   str2: "30 days live streaming your favorite team",
                //   color1: Color(0xFF552EFA),
                //   color2: Color(0xFF7C5CFF),
                //   buttomcolor: Color(0xFF613CFC),
                //   price: 63,
                // ),
                // PlantCard(
                //   str1: "14 Days VIP Access",
                //   str2: "14 days live streaming all content",
                //   color1: Color(0XFF8F00FF),
                //   color2: Color(0xFFB75BFF),
                //   buttomcolor: Color(0xFF9A19FF),
                //   price: 29,
                // ),
                // PlantCard(
                //   str1: "1 Month VIP Access",
                //   str2: "1 Month live streaming all content",
                //   color1: Color(0XFFFF238C),
                //   color2: Color(0xFFFF6FB3),
                //   buttomcolor: Color(0xFFFF3F9B),
                //   price: 49,
                // ),
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
                      MyAppSizedBox(),
                      SizedBox(
                        width: 250,
                        height: 150,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/Group 827.png",
                                width: 250,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/pink_overlay.png",
                                width: 250,
                                height: 150,
                              ),
                            ),
                            Positioned(
                              top: 17.11,
                              left: 14,
                              child: Image.asset(
                                "assets/1340920153.png",
                                width: 28,
                                height: 26,
                              ),
                            ),
                            Positioned(
                              top: 77,
                              left: 18,
                              child: Text(
                                "AC MILAN",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 96,
                              left: 18,
                              child: Text(
                                "VS FIORENTINA",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 123,
                              left: 201,
                              child: Container(
                                width: 36,
                                height: 17,
                                decoration: BoxDecoration(
                                  color: Color(0xFF000000),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Text(
                                    "12:55",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Available Gift",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFEAEAEA),
                      ),
                    ),
                  ],
                ),
                Column(
                  spacing: 14,
                  children: [
                    Row(
                      spacing: 12,
                      children: [
                        MyAppColumn(),
                        MyAppColumn()
                      ],
                    ),
                    Row(
                      spacing: 12,
                      children: [
                        MyAppColumn(),
                        MyAppColumn()
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    super.key,
    required this.str1,
    required this.str2,
    required this.color1,
    required this.color2,
    required this.buttomcolor,
    required this.price,
  });

  final String str1, str2;
  final num price;
  final Color color1, color2, buttomcolor;

  @override
  Widget build(BuildContext context) {
    return PlantCardContainer(
      color1: color1,
      color2: color2,
      str1: str1,
      str2: str2,
      price: price,
      buttomcolor: buttomcolor,
    );
  }
}
