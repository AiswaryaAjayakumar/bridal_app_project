// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, annotate_overrides

import 'dart:async';

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/home_screen.dart';
import 'package:bridal_app_project/view/sign_page/sign_page_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

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
            left: 50,
            right: 50,
            bottom: 80,
            child: Lottie.asset('assets/images/Animation - 1710862479264.json'))
      ]),
    );
  }
}
