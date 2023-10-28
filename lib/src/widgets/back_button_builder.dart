import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildBackButton(double screenWidth, double screenHeight) {
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
      scale: 0.4,
      child: SvgPicture.asset('assets/arrow_back_icon.svg'),
    ),
  );
}
