// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:flutter/material.dart';

class SelectedContainer extends StatelessWidget {
  const SelectedContainer(
      {super.key, required this.imgUrl, required this.name});

  final String imgUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 90,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imgUrl), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    // blurRadius: 6,
                  ),
                ]),
            child: Center(
                child: Text(
              name,
              style: TextStyle(
                  color: StartingColor.customWhite,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  decorationColor: StartingColor.customWhite,
                  fontFamily: "Milonga-Regular",
                  fontWeight: FontWeight.w400),
            )),
          ),
        ),
      ],
    );
  }
}
