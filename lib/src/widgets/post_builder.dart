import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_news_app/src/constants/theme_colors.dart';

Widget buildPosts(String image, String news, String newsHeader, String date,
    String time, double width, double height) {
  return Container(
    height: height * 0.15,
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(15),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              width: height * 0.13,
              height: height * 0.13,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.0125),
                    Text(
                      "News: $news",
                      style: TextStyle(
                          fontFamily: 'GellixMedium',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: themeGrayFont),
                    ),
                    SizedBox(height: height * 0.0125),
                    Text(
                      newsHeader,
                      style: TextStyle(
                        fontFamily: 'GellixSemiBold',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  children: [
                    SvgPicture.asset('assets/calendar_icon.svg'),
                    SizedBox(width: width * 0.01),
                    Text(
                      date,
                      style: TextStyle(
                          fontFamily: 'GellixMedium',
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: themeGrayFont),
                    ),
                    SizedBox(width: width * 0.03),
                    SvgPicture.asset('assets/time_icon.svg'),
                    SizedBox(width: width * 0.01),
                    Text(
                      time,
                      style: TextStyle(
                          fontFamily: 'GellixMedium',
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: themeGrayFont),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
