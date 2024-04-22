// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:flutter/material.dart';

class CustomFiltersShowModelBottom extends StatefulWidget {
  const CustomFiltersShowModelBottom({super.key});

  @override
  State<CustomFiltersShowModelBottom> createState() =>
      _CustomFiltersShowModelBottomState();
}

class _CustomFiltersShowModelBottomState
    extends State<CustomFiltersShowModelBottom> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(onPressed: () {}, child: Text("Colors")),
                  TextButton(onPressed: () {}, child: Text("Patterns")),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: StartingColor.customGrey,
                        checkColor: StartingColor.customPurple,
                        value: isChecked,
                        onChanged: (value) {
                          if (value != null) {
                            isChecked = value;
                          }
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
