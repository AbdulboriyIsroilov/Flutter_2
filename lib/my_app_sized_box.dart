import 'package:flutter/material.dart';
import 'resurs/images.dart';
import 'resurs/text_style.dart';

class MyAppSizedBox extends StatelessWidget {
  const MyAppSizedBox({
    super.key,
    required this.images1,
    required this.images2,
    required this.title1,
    required this.title2,
    required this.title3,
  });

  final String images1, images2, title1, title2, title3;

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
              images1,
              width: 250,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              AddImages.image3,
              width: 250,
              height: 150,
            ),
          ),
          Positioned(
            top: 17.11,
            left: 14,
            child: Image.asset(
              images2,
              width: 26,
              height: 26.17,
            ),
          ),
          Positioned(
            top: 77,
            left: 18,
            child: Text(
              title1,
              style: AppStyle.style1,
            ),
          ),
          Positioned(
            top: 96,
            left: 18,
            child: Text(
              title2,
              style: AppStyle.style1,
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
                  title3,
                  style: AppStyle.style2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
