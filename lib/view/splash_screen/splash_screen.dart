// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, annotate_overrides

import 'dart:async';

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';

import 'package:bridal_app_project/view/sign_page/sign_page_screen.dart';

import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
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
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 193, 228, 233),
            Color.fromARGB(255, 146, 234, 218),
            Color.fromARGB(255, 14, 130, 145),
            const Color.fromARGB(255, 8, 150, 136)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/images/Animation - 1710698501670.json',
                width: 300,
                height: 200,
                fit: BoxFit.fill,
              ),
              Text(
                "ZAUM",
                style: TextStyle(
                    fontFamily: "ArtographieLight",
                    fontSize: 40,
                    color: StartingColor.customPurple),
              ),
              Text(
                "Celebrate Love In Style",
                style: TextStyle(
                    fontFamily: "Milonga-Regular",
                    fontSize: 20,
                    color: StartingColor.customWhite),
              ),
              Lottie.asset('assets/images/Animation - 1710862479264.json'),
            ],
          ),
        ),
      ),
    );
  }
}
