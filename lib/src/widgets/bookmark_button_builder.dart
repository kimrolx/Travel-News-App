import 'package:flutter/material.dart';

Widget buildBookmarkButton(double screenWidth, double screenHeight) {
  return Container(
    width: screenWidth * 0.15,
    height: screenHeight * 0.07,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: Colors.white,
      ),
    ),
    child: Transform.scale(
      scale: 1,
      child: Image.asset('assets/bookmark.png'),
    ),
  );
}
