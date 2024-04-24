// ignore_for_file: prefer_const_constructors

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/cart_screen.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/alert.png",
                color: StartingColor.customPurple,
                scale: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/favorite.png",
                color: StartingColor.customPurple,
                scale: 25,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              },
              icon: Image.asset(
                "assets/images/shopping-bag (1).png",
                color: StartingColor.customPurple,
                scale: 25,
              )),
        ],
      ),
      body: Center(child: Text("Type")),
    );
  }
}
