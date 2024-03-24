// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/carousel_slide_screen.dart';
import 'package:flutter/material.dart';

class Jayalaksjmi_Tex extends StatefulWidget {
  const Jayalaksjmi_Tex({super.key});

  @override
  State<Jayalaksjmi_Tex> createState() => _Jayalaksjmi_TexState();
}

class _Jayalaksjmi_TexState extends State<Jayalaksjmi_Tex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
                child: Image(
                    image: AssetImage(
                        "assets/images/Screenshot 2024-03-22 at 1.45.53 PM.png"))),
            CarouselSlideScreen(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(height: 1),
                    decoration: InputDecoration(
                        hintText: "Select your dress type",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      style: TextStyle(height: 1),
                      decoration: InputDecoration(
                          hintText: "Select your dress pattern",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40))))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
