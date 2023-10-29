import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCarouselWidget extends StatefulWidget {
  final List<String> imagePaths;

  const MyCarouselWidget({super.key, required this.imagePaths});

  @override
  State<MyCarouselWidget> createState() => _MyCarouselWidgetState();
}

class _MyCarouselWidgetState extends State<MyCarouselWidget> {
  int currentIndex = 0;
  final PageController _pageController = PageController();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (currentIndex < widget.imagePaths.length - 1) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index % widget.imagePaths.length;
              });
            },
            itemBuilder: (context, index) {
              return SizedBox(
                width: screenWidth,
                height: screenHeight,
                child: Image.asset(
                  widget.imagePaths[index % widget.imagePaths.length],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < widget.imagePaths.length; i++)
                buildIndicator(currentIndex == i),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildIndicator(bool isSelected) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
        child: SvgPicture.asset(
          isSelected
              ? 'assets/carousel_indicator_enabled.svg'
              : 'assets/carousel_indicator_disabled.svg',
          width: isSelected ? screenWidth * 0.03 : screenWidth * 0.01,
          height: isSelected ? screenHeight * 0.03 : screenHeight * 0.01,
        ),
      ),
    );
  }
}
