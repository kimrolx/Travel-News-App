import 'package:flutter/material.dart';
import 'package:travel_news_app/src/constants/theme_colors.dart';

Widget buildSearchBar(
    String text, String image, double screenHeight, double screenWidth) {
  return Padding(
    padding:
        EdgeInsets.only(top: screenHeight * 0.04, bottom: screenHeight * 0.02),
    child: Stack(
      children: [
        Container(
          width: screenWidth * 0.860,
          height: screenHeight * 0.08,
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 2,
                  offset: const Offset(0, 0.5),
                ),
              ]),
          padding: const EdgeInsets.only(left: 16.0),
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Gellix',
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: themeGrayFont,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.692),
          child: Container(
            width: screenWidth * 0.1695,
            height: screenHeight * 0.08,
            decoration: BoxDecoration(
              color: themeBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(image),
          ),
        ),
      ],
    ),
  );
}
