

// ignore_for_file: prefer_const_constructors

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:flutter/material.dart';


class PatternCustomBottomSheet extends StatefulWidget {
  const PatternCustomBottomSheet({super.key});

  @override
  State<PatternCustomBottomSheet> createState() =>
      _PatternCustomBottomSheetState();
}

class _PatternCustomBottomSheetState extends State<PatternCustomBottomSheet> {
  List<String> patternList = [
    "Butta",
    "Line Design",
    "Banarasi Design",
    "Tissue Jall",
    "Horizontal Lines",
  ];
  List<String> customPatternList = [
    "https://seematti.com/wp-content/uploads/2024/03/13544551-6.jpg",
    "https://seematti.com/wp-content/uploads/2024/02/13544197-5.jpg",
    "https://seematti.com/wp-content/uploads/2022/09/13121265-4.jpg",
    "https://seematti.com/wp-content/uploads/2022/09/13081549-5.jpg",
    "https://seematti.com/wp-content/uploads/2022/09/13081548-2.jpg",
  ];

  List<bool> selectedIdex = [];
  int? len;
  @override
  void initState() {
    len = patternList.length;
    selectedIdex = List.generate(len!, (index) => false);
   // print(selectedIdex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, bottomState) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: customPatternList.length,
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
                              Text(patternList[index]),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Container(
                              height: 100,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          customPatternList[index]))),
                            ),
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
                            child:
                                Text("Cancel", style: TextStyle(fontSize: 20))),
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
            ),
          ),
        );
      },
    );
  }
}
