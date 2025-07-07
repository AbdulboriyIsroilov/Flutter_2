import 'package:flutter/material.dart';

class MyAppColumn extends StatelessWidget {
  const MyAppColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 173,
              height: 98,
              decoration: BoxDecoration(
                color: Color(0xFFFF8A00),
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              ),
            ),
            Positioned(
              top: 12,
              left: 17,
              child: Text(
                "1",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 45,
              left: 17,
              child: Text(
                "Ticket",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Positioned(
              top: 62,
              left: 17,
              child: Text(
                "Streaming",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Positioned(
              top: 15.73,
              left: 103,
              child: Image.asset(
                "assets/Subtract.png",
                width: 74.19,
                height: 96.53,
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              width: 173,
              height: 102,
              decoration: BoxDecoration(
                color: Color(0xFF353535),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(14),
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 12,
              child: Text(
                "1000 Points",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Positioned(
              top: 39,
              left: 12,
              child: Container(
                width: 149,
                height: 4,
                decoration: BoxDecoration(
                  color: Color(0xFFEAEAEA),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Positioned(
              top: 58,
              left: 13,
              child: Container(
                width: 77,
                height: 28,
                decoration: BoxDecoration(
                  color: Color(0xFF00A3B7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Reedem",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
