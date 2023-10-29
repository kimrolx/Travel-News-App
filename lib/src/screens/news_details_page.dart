import 'package:flutter/material.dart';
import 'package:travel_news_app/src/constants/theme_colors.dart';
import 'package:travel_news_app/src/models/news_details_content.dart';
import 'package:travel_news_app/src/widgets/back_button_builder.dart';
import 'package:travel_news_app/src/widgets/bookmark_button_builder.dart';
import 'package:travel_news_app/src/widgets/carousel_builder.dart';
import 'package:travel_news_app/src/widgets/navigation_bar.dart';

class NewsDetailsPage extends StatefulWidget {
  final NewsDetailsContent newsDetailsContent;
  const NewsDetailsPage({super.key, required this.newsDetailsContent});

  @override
  State<NewsDetailsPage> createState() => _NewsDetailsPageState();
}

class _NewsDetailsPageState extends State<NewsDetailsPage> {
  int currentIndex = 0;

  final commonTextStyle = TextStyle(
    fontFamily: 'GellixMedium',
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: themeGrayFont,
  );

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    List<String> images = [
      widget.newsDetailsContent.image1,
      widget.newsDetailsContent.image2,
      widget.newsDetailsContent.image3
    ];

    return Scaffold(
      bottomNavigationBar: buildNavigationBar(currentIndex, onItemTapped),
      body: SafeArea(
        child: Stack(
          children: [
            MyCarouselWidget(imagePaths: images),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.08,
                right: screenWidth * 0.08,
                top: screenHeight * 0.05,
                bottom: screenHeight * 0.025,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: buildBackButton(screenWidth, screenHeight),
                  ),
                  buildBookmarkButton(screenWidth, screenHeight),
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.5,
              left: 0,
              right: 0,
              child: SizedBox(
                height: screenHeight * 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: screenWidth * 0.08,
                      left: screenWidth * 0.08,
                      bottom: screenHeight * 0.03,
                      top: screenHeight * 0.03,
                    ),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.05),
                      child: Column(
                        children: [
                          Text(
                            widget.newsDetailsContent.headerText,
                            style: TextStyle(
                              fontFamily: 'GellixBold',
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: black,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: screenHeight * 0.03,
                              bottom: screenHeight * 0.03,
                            ),
                            width: screenWidth * 0.80,
                            height: screenHeight * 0.07,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(19),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 2,
                                  offset: const Offset(0, 0.5),
                                ),
                              ],
                            ),
                            child: Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: screenWidth * 0.03,
                                    right: screenWidth * 0.03),
                                child: Row(
                                  children: [
                                    ClipOval(
                                      child: Image.asset(
                                        widget.newsDetailsContent.profileImage,
                                        width: screenWidth * 0.106,
                                        height: screenHeight * 0.05,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.02),
                                    Text(
                                      widget.newsDetailsContent.name,
                                      style: commonTextStyle,
                                    ),
                                    SizedBox(width: screenWidth * 0.02),
                                    Text(
                                      widget.newsDetailsContent.date,
                                      style: commonTextStyle,
                                    ),
                                    SizedBox(width: screenWidth * 0.02),
                                    Text(
                                      '•',
                                      style: commonTextStyle,
                                    ),
                                    SizedBox(width: screenWidth * 0.02),
                                    Text(
                                      widget.newsDetailsContent.time,
                                      style: commonTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: screenHeight * 0.03),
                            child: Text(
                              widget.newsDetailsContent.text,
                              style: TextStyle(
                                fontFamily: 'GellixSemiBold',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
