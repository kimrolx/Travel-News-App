import 'package:flutter/material.dart';
import 'package:travel_news_app/src/constants/theme_colors.dart';
import 'package:travel_news_app/src/models/profile_details_content.dart';
import 'package:travel_news_app/src/screens/profile_details_page.dart';

Widget buildNews(
    BuildContext context,
    int profileIndex,
    String image,
    String text,
    String profileImage,
    String name,
    String date,
    String icon,
    double screenHeight,
    double screenWidth) {
  List<ProfileDetailsContent> profileDetailsContent = [
    ProfileDetailsContent(
      image1: 'assets/news1_profile_image.jpg',
      fName: 'Dong-Min',
      lName: 'Sang',
      job: 'Author & Writer',
      description:
          'Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..',
      following: '2351',
      posts: '2.3k',
      followers: '46.5k',
      newsImage: 'assets/news1_lifestyle.png',
      news: 'Lifestyle',
      newsText: 'Feel the thrill on the only surf simulator in Maldives 2022',
      date: '16th May',
      time: '9:32 PM',
      newsImage1: 'assets/news_sports.jpg',
      news1: 'Sports',
      newsText1: 'Postecoglou on Spurs title chances: "Let the fans dream"',
      date1: '11th May',
      time1: '10:32 AM',
      newsImage2: 'assets/news2_politics.jpg',
      news2: 'Politics',
      newsText2:
          'Obama criticizes Israel’s decision to cut off food and water to Gaza',
      date2: '16th November',
      time2: '9:40 AM',
      popularImage: 'assets/popuImage.jpg',
      popularImage1: 'assets/popuImage1.jpg',
      popularImage2: 'assets/popuImage2.jpg',
    ),
    ProfileDetailsContent(
      image1: 'assets/hongkong_profile_image.jpg',
      fName: 'Sheian',
      lName: 'Intes',
      job: 'Author & Writer',
      description:
          'Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..',
      following: '5561',
      posts: '6.7k',
      followers: '80.23k',
      newsImage: 'assets/politics1.jpg',
      news: 'Politics',
      newsText:
          'Israel expands ground operation in Gaza and bombs Hamas tunnels',
      date: '28th October',
      time: '7:35AM',
      newsImage1: 'assets/politics2.jpg',
      news1: 'Politics',
      newsText1: 'Agreement reached for Biden-Xi talks, official says',
      date1: '27th October',
      time1: '9:52 PM',
      newsImage2: 'assets/politics3.jpg',
      news2: 'Politics',
      newsText2: 'State Dept. urges U.S. citizens to evacuate Lebanon',
      date2: '27th October',
      time2: '6:28 PM',
      popularImage: 'assets/popuSheian1.jpg',
      popularImage1: 'assets/popuSheian2.jpg',
      popularImage2: 'assets/popuSheian3.jpg',
    ),
  ];

  return SingleChildScrollView(
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: SizedBox(
                height: screenHeight * 0.18,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: screenWidth * 0.04,
              right: screenWidth * 0.04,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'GellixSemiBold',
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileDetailsPage(
                          profileDetailsContent:
                              profileDetailsContent[profileIndex],
                        ),
                      ),
                    );
                  },
                  child: ClipOval(
                    child: Image.asset(
                      profileImage,
                      width: screenWidth * 0.108,
                      height: screenHeight * 0.05,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.030),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontFamily: 'GellixSemiBold',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: black,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.007),
                      Text(
                        date,
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
                  child: Image.asset(icon),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
