// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ConfirmTrial extends StatefulWidget {
  const ConfirmTrial({super.key});

  @override
  State<ConfirmTrial> createState() => _ConfirmTrialState();
}

class _ConfirmTrialState extends State<ConfirmTrial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset(
            "assets/images/Animation - 1713706384677.json",
            width: 400,
            height: 400,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
