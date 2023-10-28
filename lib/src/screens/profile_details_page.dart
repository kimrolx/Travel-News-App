import 'package:flutter/material.dart';
import 'package:travel_news_app/src/constants/theme_colors.dart';
import 'package:travel_news_app/src/models/profile_details_content.dart';
import 'package:travel_news_app/src/widgets/popular_posts_builder.dart';
import 'package:travel_news_app/src/widgets/post_builder.dart';

class ProfileDetailsPage extends StatefulWidget {
  final ProfileDetailsContent profileDetailsContent;
  const ProfileDetailsPage({super.key, required this.profileDetailsContent});

  @override
  State<ProfileDetailsPage> createState() => _ProfileDetailsPageState();
}

class _ProfileDetailsPageState extends State<ProfileDetailsPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<Widget> postItems = [
      buildPosts(
        widget.profileDetailsContent.newsImage,
        widget.profileDetailsContent.news,
        widget.profileDetailsContent.newsText,
        widget.profileDetailsContent.date,
        widget.profileDetailsContent.time,
        width,
        height,
      ),
      buildPosts(
        widget.profileDetailsContent.newsImage1,
        widget.profileDetailsContent.news1,
        widget.profileDetailsContent.newsText1,
        widget.profileDetailsContent.date1,
        widget.profileDetailsContent.time1,
        width,
        height,
      ),
      buildPosts(
        widget.profileDetailsContent.newsImage2,
        widget.profileDetailsContent.news2,
        widget.profileDetailsContent.newsText2,
        widget.profileDetailsContent.date2,
        widget.profileDetailsContent.time2,
        width,
        height,
      ),
    ];

    List<Widget> popularItems = [
      buildPopular(
        widget.profileDetailsContent.popularImage,
        width,
        height,
      ),
      buildPopular(
        widget.profileDetailsContent.popularImage1,
        width,
        height,
      ),
      buildPopular(
        widget.profileDetailsContent.popularImage2,
        width,
        height,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        child: Padding(
          padding: EdgeInsets.only(
            top: height * 0.04,
            left: width * 0.07,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.profileDetailsContent.image1,
                      width: width * 0.18,
                      height: height * 0.08,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.03,
                      right: width * 0.07,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.profileDetailsContent.fName,
                              style: const TextStyle(
                                fontFamily: 'GellixBold',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: width * 0.01),
                            Text(
                              widget.profileDetailsContent.lName,
                              style: const TextStyle(
                                fontFamily: 'GellixBold',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          widget.profileDetailsContent.job,
                          style: const TextStyle(
                            fontFamily: 'GellixMedium',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width * 0.275,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: themeBlue,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Following',
                      style: TextStyle(
                        fontFamily: 'GellixMedium',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.03,
                  bottom: height * 0.02,
                  right: width * 0.07,
                ),
                child: Text(
                  widget.profileDetailsContent.description,
                  style: TextStyle(
                    fontFamily: 'GellixMedium',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: themeGrayFont,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: height * 0.02,
                  right: width * 0.07,
                ),
                child: Container(
                  width: width * 1,
                  height: height * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: black,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.028,
                      left: width * 0.02,
                      right: width * 0.05,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.profileDetailsContent.following,
                              style: TextStyle(
                                fontFamily: 'GellixSemiBlue',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: white,
                              ),
                            ),
                            Text(
                              widget.profileDetailsContent.posts,
                              style: TextStyle(
                                fontFamily: 'GellixSemiBlue',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: white,
                              ),
                            ),
                            Text(
                              widget.profileDetailsContent.followers,
                              style: TextStyle(
                                fontFamily: 'GellixSemiBlue',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Following',
                              style: TextStyle(
                                fontFamily: 'GellixMedium',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: white,
                              ),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(
                                fontFamily: 'GellixMedium',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: white,
                              ),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontFamily: 'GellixMedium',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(bottom: height * 0.01, right: width * 0.07),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.profileDetailsContent.fName}'s Posts",
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
                height: height * 0.37,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: postItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.015,
                        bottom: height * 0.003,
                        left: width * 0.015,
                        right: width * 0.07,
                      ),
                      child: postItems[index],
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.01, bottom: height * 0.01),
                child: Text(
                  'Popular from ${widget.profileDetailsContent.fName}',
                  style: TextStyle(
                    fontFamily: 'GellixBold',
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: black,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.18,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: popularItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.015,
                        right: width * 0.07,
                      ),
                      child: popularItems[index],
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
