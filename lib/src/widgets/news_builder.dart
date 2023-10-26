import 'package:flutter/material.dart';
import 'package:travel_news_app/src/constants/theme_colors.dart';

Widget buildNews(String image, String text, String profileImage, String name,
    String date, String icon, double screenHeight, double screenWidth) {
  return Padding(
    padding: EdgeInsets.only(top: screenHeight * 0.035),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        width: screenWidth * 0.670,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: screenWidth * 0.04, right: screenWidth * 0.04),
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: themeBlackFont,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Image.asset(profileImage),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.030),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontFamily: 'Gellix',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: themeBlackFont,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.007),
                        Text(
                          date,
                          style: TextStyle(
                            fontFamily: 'Gellix',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: themeGrayFont,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: screenWidth * 0.12,
                    height: screenHeight * 0.05,
                    decoration: BoxDecoration(
                      color: themeGray,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/share_icon.png'),
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
