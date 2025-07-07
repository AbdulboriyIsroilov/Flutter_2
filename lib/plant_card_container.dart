import 'package:flutter/material.dart';

class PlantCardContainer extends StatelessWidget {
  const PlantCardContainer({
    super.key,
    required this.color1,
    required this.color2,
    required this.str1,
    required this.str2,
    required this.price,
    required this.buttomcolor,
  });

  final Color color1;
  final Color color2;
  final String str1;
  final String str2;
  final num price;
  final Color buttomcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 195,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 20,
        ),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              str1,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFFEAEAEA),
              ),
            ),
            Text(
              str2,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFFDDDDDD),
              ),
            ),
            Text(
              "\$$price",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFFFFFF),
              ),
            ),
            Container(
              width: 140,
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Activate",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  color: buttomcolor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
