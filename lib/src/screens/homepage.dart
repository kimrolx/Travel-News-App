import 'package:flutter/material.dart';
import 'package:travel_news_app/src/models/news_details_content.dart';
import 'package:travel_news_app/src/screens/news_details_page.dart';
import 'package:travel_news_app/src/widgets/navigation_bar.dart';
import 'package:travel_news_app/src/widgets/news_builder.dart';
import 'package:travel_news_app/src/widgets/search_bar_builder.dart';
import 'package:travel_news_app/src/constants/theme_colors.dart';
import 'package:travel_news_app/src/widgets/shorts_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final commonTextStyle = TextStyle(
    fontFamily: 'GellixSemiBold',
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: themeGrayFont,
  );

  List<NewsDetailsContent> newsDetailsContent = [
    NewsDetailsContent(
      image1: 'assets/maldives1.jpg',
      image2: 'assets/maldives2.jpg',
      image3: 'assets/maldives3.jpg',
      headerText: 'Feel the thrill on the only surf simulator in Maldives 2022',
      profileImage: 'assets/news1_profile_image.jpg',
      name: 'Sang Dong-Min',
      date: 'May 17',
      time: '8 min read',
      text:
          'Just say anything, George, say what evers natural, the first thing that comes to your mind. Take that what you mutated son-of-a-bitch. '
          'My pine, why you. You space bastard, you killed a pine. You do? Yeah, its 8:00. Hey, McFly, I thought I told you never.',
    ),
    NewsDetailsContent(
      image1: 'assets/hongkong1.jpg',
      image2: 'assets/hongkong2.jpg',
      image3: 'assets/hongkong3.jpg',
      headerText:
          'Hongkong wins over Wallstreet CEOs after lifting strict Covid rules',
      profileImage: 'assets/hongkong_profile_image.jpg',
      name: 'Sheian Intes',
      date: 'January 2',
      time: '2 min read',
      text:
          'Just say anything, George, say what evers natural, the first thing that comes to your mind. Take that what you mutated son-of-a-bitch. '
          'My pine, why you. You space bastard, you killed a pine. You do? Yeah, its 8:00. Hey, McFly, I thought I told you never.',
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    Widget searchBar = buildSearchBar(
      'Search for article...',
      'assets/search_icon.png',
      screenHeight,
      screenWidth,
    );

    List<Widget> newsItems = [
      buildNews(
        context,
        0,
        'assets/news1_lifestyle.png',
        'Feel the thrill on the only surf simulator in Maldives 2022',
        'assets/news1_profile_image.jpg',
        'Sang Dong-Min',
        'Sep 9, 2022',
        'assets/share_icon.png',
        screenHeight,
        screenWidth,
      ),
      buildNews(
        context,
        1,
        'assets/hongkong.jpg',
        'Hongkong wins over Wallstreet CEOs after lifting strict Covid rules',
        'assets/hongkong_profile_image.jpg',
        'Sheian Intes',
        'Jan 3, 2022',
        'assets/share_icon.png',
        screenHeight,
        screenWidth,
      ),
    ];

    List<Widget> shortsItems = [
      buildShorts(
        'assets/shorts1_image.png',
        'assets/play_icon.svg',
        'Top Trending Islands in 2022',
        'assets/eye_icon.svg',
        '40,999',
        screenHeight,
        screenWidth,
      ),
      buildShorts(
        'assets/short2.png',
        'assets/play_icon.svg',
        'US ally Colombia swings towards China',
        'assets/eye_icon.svg',
        '20,382',
        screenHeight,
        screenWidth,
      ),
    ];

    return Scaffold(
      bottomNavigationBar: buildNavigationBar(currentIndex, onItemTapped),
      backgroundColor: white,
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        child: Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.04,
            left: screenWidth * 0.07,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/profile_image.png'),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.035),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenHeight * 0.003),
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                            fontFamily: 'GellixBold',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: black,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.004),
                        Text(
                          'Monday, 3 October',
                          style: TextStyle(
                            fontFamily: 'GellixMedium',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: themeGrayFont,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              searchBar,
              Padding(
                padding: EdgeInsets.only(
                  right: screenWidth * 0.08,
                  bottom: screenHeight * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('#Health', style: commonTextStyle),
                    Text('#Music', style: commonTextStyle),
                    Text('#Technology', style: commonTextStyle),
                    Text('#Sports', style: commonTextStyle),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.4,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: newsItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewsDetailsPage(
                              newsDetailsContent: newsDetailsContent[index],
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.002,
                          left: screenWidth * 0.004,
                          right: screenWidth * 0.05,
                        ),
                        child: newsItems[index],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: screenWidth * 0.08,
                  bottom: screenHeight * 0.025,
                  top: screenHeight * 0.01,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shorts For You',
                      style: TextStyle(
                        fontFamily: 'GellixBold',
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: black,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontFamily: 'GellixSemiBold',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: themeBlue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.10,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: shortsItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.002,
                        bottom: screenHeight * 0.002,
                        left: screenWidth * 0.004,
                        right: screenWidth * 0.05,
                      ),
                      child: shortsItems[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
