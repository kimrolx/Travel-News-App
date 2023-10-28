import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget buildCarousel(
    List<String> imagePaths, double screenWidth, double screenHeight) {
  return CarouselSlider(
    items: imagePaths.map((imagePath) {
      return SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Image.asset(imagePath, fit: BoxFit.cover),
      );
    }).toList(),
    options: CarouselOptions(
      height: screenHeight,
      viewportFraction: 1.0,
      initialPage: 0,
    ),
  );
}
