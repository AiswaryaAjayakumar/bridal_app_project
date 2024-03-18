// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, annotate_overrides

import 'dart:async';

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/home_screen.dart';
import 'package:bridal_app_project/view/sign_page/sign_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignPageScreen(),
          ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/brides.jpeg"),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 250,
          left: 100,
          right: 100,
          child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: StartingPageColor.customWhite),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 1),
              child: Text(
                "Get Started...",
                style: TextStyle(
                    color: StartingPageColor.customWhite,
                    fontSize: 30,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
