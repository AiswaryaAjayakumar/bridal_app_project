// ignore_for_file: prefer_const_constructors

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:flutter/material.dart';

class PriceCutomBottomSheet extends StatefulWidget {
  const PriceCutomBottomSheet({super.key});

  @override
  State<PriceCutomBottomSheet> createState() => _PriceCutomBottomSheetState();
}

class _PriceCutomBottomSheetState extends State<PriceCutomBottomSheet> {
  List<String> priceList = [
    "5000 - 10000",
    "10000 - 20000",
    "20000 - 30000",
    "30000 - 40000",
    "40000 - 50000",
  ];

  List<bool> selectedIdex = [];
  int? len;
  @override
  void initState() {
    len = priceList.length;
    selectedIdex = List.generate(len!, (index) => false);
    print(selectedIdex);
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
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
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
                      itemCount: priceList.length,
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                            width: 30,
                          ),
                          Text(
                            priceList[index],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
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
