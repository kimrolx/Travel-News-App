import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

Widget buildNavigationBar(int currentIndex, ValueSetter<int> onItemTapped) {
  return BottomNavigationBar(
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
  );
}
