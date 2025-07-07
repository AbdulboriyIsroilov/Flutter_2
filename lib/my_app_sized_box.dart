import 'package:flutter/material.dart';
import 'resurs/images.dart';
import 'resurs/text_style.dart';

class MyAppSizedBox extends StatelessWidget {
  const MyAppSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 150,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              AddImages.image1,
              width: 250,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              AddImages.image2,
              width: 250,
              height: 150,
            ),
          ),
          Positioned(
            top: 17.11,
            left: 14,
            child: Image.asset(
              AddImages.image3,
              width: 26,
              height: 26.17,
            ),
          ),
          Positioned(
            top: 77,
            left: 18,
            child: Text(
              "MAN. UNITED",
              style: AppStyle.style1
            ),
          ),
          Positioned(
            top: 96,
            left: 18,
            child: Text(
              "VS NEWCASTLE",
              style: AppStyle.style1
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
                  "02:31",
                  style: AppStyle.style2
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
