// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/listed_shops_screen.dart';
import 'package:bridal_app_project/view/home_screen/widgets/location_screen.dart';
import 'package:bridal_app_project/view/home_screen/widgets/search_item_screen.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/cart_screen.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ZAUM",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ArtographieLight",
                      color: StartingColor.customPurple),
                ),
                Row(
                  children: [
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
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocationScreen(),
                    ));
              },
              child: Row(
                children: [
                  Text(
                    "Kochi",
                    style: TextStyle(color: ButtonCustomColor.customTeal3),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: StartingColor.customPurple,
                    size: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchItemScreen(),
                    ));
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: StartingColor.customGrey)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_sharp,
                        color: StartingColor.customPurple,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search here",
                        style: TextStyle(
                            color: StartingColor.customGrey, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ListedShopsScreen(),
          ],
        ),
      ),
    ));
  }
}
