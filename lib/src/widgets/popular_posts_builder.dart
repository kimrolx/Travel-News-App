import 'package:flutter/material.dart';

Widget buildPopular(String image, double width, double height) {
  return SizedBox(
    height: height * 0.18,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(image),
    ),
  );
}
