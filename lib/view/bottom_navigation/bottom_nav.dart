// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/home_screen.dart';
import 'package:bridal_app_project/view/profile_screen/profile_screen.dart';
import 'package:bridal_app_project/view/category_screen/category_screen.dart';

import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List pages = [HomeScreen(), CategoryScreen(), ProfileScreen()];
  int indexNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home.png")),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/shapes.png")),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/profile.png")),
            label: "Account",
          ),
        ],
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },

        selectedFontSize: 20,
        selectedItemColor: StartingColor.customPurple,
        selectedIconTheme:
            IconThemeData(color: StartingColor.customPurple, size: 30),
        // selectedIconTheme: IconThemeData(color: StartingPageColor.customPurple),
      ),
      body: Center(
        child: pages[indexNum],
      ),
    );
  }
}
