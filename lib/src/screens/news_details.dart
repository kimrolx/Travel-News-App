import 'package:flutter/material.dart';

class NewsDetailsPage extends StatelessWidget {
  final String image1,
      image2,
      image3,
      headerText,
      profileImage,
      profileName,
      date,
      time,
      description;

  final double screenHeight, screenWidth;

  const NewsDetailsPage({
    super.key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.headerText,
    required this.profileImage,
    required this.profileName,
    required this.date,
    required this.time,
    required this.description,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Details Test Page"),
      ),
      body: const Center(
        child: Text("This is the News Details Test Page."),
      ),
    );
  }
}
