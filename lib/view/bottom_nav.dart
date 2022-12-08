import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storio_app/view/home/home_screen.dart';
import 'package:storio_app/view/message/message_screen.dart';
import 'package:storio_app/view/profile/profile_screen.dart';
import 'package:storio_app/view/search/search_screen.dart';
import 'package:storio_app/view/settings/settings_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const MessageScreen(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar(
        gapLocation: GapLocation.none,
        leftCornerRadius: 30,
        rightCornerRadius: 30,
        elevation: 10,
        activeColor: Colors.blue[800],
        iconSize: 25,
        icons: const [
          FontAwesomeIcons.house,
          FontAwesomeIcons.magnifyingGlass,
          FontAwesomeIcons.message,
          FontAwesomeIcons.user,
          FontAwesomeIcons.gears,
        ],
        activeIndex: currentIndex,
        onTap: ((value) {
          setState(() {
            currentIndex = value;
          });
        }),
      ),
      body: pages[currentIndex],
    );
  }
}
