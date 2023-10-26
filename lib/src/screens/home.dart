import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/src/screens/bookmarks.dart';
import 'package:travel_news_app/src/screens/notifications.dart';
import 'package:travel_news_app/src/screens/profile.dart';
import 'package:travel_news_app/src/widgets/news_builder.dart';
import 'package:travel_news_app/src/widgets/search_bar_builder.dart';
import 'package:travel_news_app/src/constants/theme_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final commonTextStyle = TextStyle(
      fontFamily: 'Gellix',
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: themeGrayFont,
    );

    Widget searchBar = buildSearchBar(
      'Search for article...',
      'assets/search_icon.png',
      screenHeight,
      screenWidth,
    );

    List<Widget> newsItems = [
      buildNews(
        'assets/news1_image.png',
        'Feel the thrill on the only surf simulator in Maldives 2022',
        'assets/news1_profile_image.png',
        'Sang Dong-Min',
        'Sep 9, 2022',
        'assets/share_icon.png',
        screenHeight,
        screenWidth,
      ),
      buildNews(
        'assets/news1_image.png',
        'Hongkong wins over Wallstreet CEOs after lifting strict Covid rules',
        'assets/news2_profile_image.png',
        'Pan Bong',
        'Jan 3, 2022',
        'assets/share_icon.png',
        screenHeight,
        screenWidth,
      ),
    ];

    List<Widget> selectedIcons = [
      SvgPicture.asset('assets/home_selected_icon.svg'),
      SvgPicture.asset('assets/bookmark_selected_icon.svg'),
      SvgPicture.asset('assets/notification_selected_icon.svg'),
      SvgPicture.asset('assets/profile_selected_icon.svg'),
    ];

    List<Widget> unselectedIcons = [
      SvgPicture.asset('assets/home_unselected_icon.svg'),
      SvgPicture.asset('assets/bookmark_unselected_icon.svg'),
      SvgPicture.asset('assets/notification_unselected_icon.svg'),
      SvgPicture.asset('assets/profile_unselected_icon.svg'),
    ];

    void onItemTapped(int index) {
      setState(() {
        currentIndex = index;
        if (currentIndex == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BookmarkPage()),
          );
        }
        if (currentIndex == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NotificationsPage()),
          );
        }
        if (currentIndex == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfilePage()),
          );
        }
      });
    }

    return Scaffold(
      backgroundColor: themeBackground,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0 ? selectedIcons[0] : unselectedIcons[0],
            label: '',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 1 ? selectedIcons[1] : unselectedIcons[1],
            label: '',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 2 ? selectedIcons[2] : unselectedIcons[2],
            label: '',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 3 ? selectedIcons[3] : unselectedIcons[3],
            label: '',
          ),
        ],
      ),
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
                            fontFamily: 'Gellix',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: themeBlackFont,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.004),
                        Text(
                          'Monday, 3 October',
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
                ],
              ),
              searchBar,
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.08),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('#Health', style: commonTextStyle),
                    Text('#Music', style: commonTextStyle),
                    Text('#Technology', style: commonTextStyle),
                    Text('#Sports', style: commonTextStyle),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: newsItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.069),
                      child: newsItems[index],
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
