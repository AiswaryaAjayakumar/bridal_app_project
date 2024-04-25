// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/bottom_navigation/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ConfirmTrial extends StatefulWidget {
  const ConfirmTrial({super.key});

  @override
  State<ConfirmTrial> createState() => _ConfirmTrialState();
}

class _ConfirmTrialState extends State<ConfirmTrial> {
  static const colorizeColors = [
    Colors.purple,
    Colors.red,
    Colors.yellow,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://us.123rf.com/450wm/robuart/robuart1812/robuart181204188/113673262-woman-client-in-changing-room-shopping-vector.jpg?ver=6"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText("Trial Confirmed",
                      textStyle: TextStyle(
                          fontSize: 50, fontFamily: "Milonga-Regular"),
                      colors: colorizeColors),
                ],
                isRepeatingAnimation: true,
                totalRepeatCount: 20,
              ),
              Text(
                "We will contact you soon....",
                style:
                    TextStyle(color: StartingColor.customPurple, fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNav(),
                        ),
                        (route) => false);
                  },
                  child: Text("Return to home"))
            ],
          ),
        ),
      ),
    );
  }
}
