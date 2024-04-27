// ignore_for_file: prefer_const_constructors

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:flutter/material.dart';

class ColorCustomBottomSheet extends StatefulWidget {
  const ColorCustomBottomSheet({super.key});

  @override
  State<ColorCustomBottomSheet> createState() => _ColorCustomBottomSheetState();
}

class _ColorCustomBottomSheetState extends State<ColorCustomBottomSheet> {
  List<String> colorList = [
    "Grape Wine",
    "Maroon ",
    "Deeep Orange",
    "Rani Pink",
    "Green",
    "Deep Purple",
  ];
  List customColorList = [
    Color.fromARGB(205, 74, 1, 96),
    Color.fromARGB(255, 63, 7, 3),
    Color.fromARGB(255, 203, 88, 5),
    const Color.fromARGB(255, 214, 17, 83),
    Color.fromARGB(255, 17, 58, 4),
    Color.fromARGB(255, 196, 15, 227)
  ];

  List<bool> selectedIdex = [];
  int? len;
  @override
  void initState() {
    len = colorList.length;
    selectedIdex = List.generate(len!, (index) => false);
    print(selectedIdex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, bottomState) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: colorList.length,
                  itemBuilder: (context, index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: StartingColor.customGrey,
                            checkColor: StartingColor.customPurple,
                            value: selectedIdex[index],
                            onChanged: (value) {
                              selectedIdex[index] = !selectedIdex[index];
                              bottomState(() {});
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(colorList[index]),
                        ],
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: customColorList[index]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel", style: TextStyle(fontSize: 20))),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Ok",
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
