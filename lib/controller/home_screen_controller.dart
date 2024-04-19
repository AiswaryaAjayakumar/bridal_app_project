import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  bool isChecked = false;
  static List customColorList = [
    const Color.fromARGB(255, 249, 131, 170),
    const Color.fromARGB(255, 83, 167, 235),
    const Color.fromARGB(255, 161, 242, 164),
    const Color.fromARGB(255, 241, 123, 115),
  ];
  static List<String> customBorder = [
    "Borderless",
    "Border",
    "Heavy Border",
    "Light Border",
    "Outline Border",
  ];

   
}
