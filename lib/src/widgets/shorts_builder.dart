import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/src/constants/theme_colors.dart';

Widget buildShorts(String image, String playIcon, String headerText,
    String eyeIcon, String text, double screenHeight, double screenWidth) {
  return Container(
    width: screenWidth * 0.620,
    height: screenHeight * 0.110,
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 2,
          offset: const Offset(0, 0.5),
        ),
      ],
    ),
    child: Row(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Transform.scale(
                scale: 0.3,
                child: SvgPicture.asset(playIcon),
              ),
            ),
          ],
        ),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(
              left: screenWidth * 0.02,
              right: screenWidth * 0.03,
              top: screenHeight * 0.025,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headerText,
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: themeBlackFont,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.01),
                  child: Row(
                    children: [
                      SvgPicture.asset(eyeIcon),
                      SizedBox(width: screenWidth * 0.01),
                      Text(
                        text,
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: themeGrayFont,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
