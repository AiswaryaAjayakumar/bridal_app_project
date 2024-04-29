// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/color_custom_bottom_sheet.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/patternCustomBottomSheet.dart';
import 'package:flutter/material.dart';

class CustomPopUp extends StatefulWidget {
  const CustomPopUp({super.key});

  @override
  State<CustomPopUp> createState() => _CustomPopUpState();
}

class _CustomPopUpState extends State<CustomPopUp> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  context: context,
                  builder: (context) => ColorCustomBottomSheet(),
                );
              },
              child: Text("Colors"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  elevation: 10,
                  // backgroundColor: Color.fromARGB(255, 2, 151, 121),
                  context: context,
                  builder: (context) => PatternCustomBottomSheet(),
                );
              },
              child: Text("Patterns"),
            )
          ],
        ),
      ),
    );
  }
}
