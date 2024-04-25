// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/selected_tex.dart';
import 'package:flutter/material.dart';

class ListedShopsScreen extends StatefulWidget {
  const ListedShopsScreen({super.key});

  @override
  State<ListedShopsScreen> createState() => _ListedShopsScreenState();
}

class _ListedShopsScreenState extends State<ListedShopsScreen> {
  // int selectedIndex = 0;
  // List pages = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Selected_Tex(
                      title: "Jayalakshmi",
                      color: StartingColor.customRed,
                      aniamtedText: "Available Stock",
                    ),
                  ));
            },
            child: Container(
              height: 230,
              //width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/textiles/jayalaxmi.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Selected_Tex(
                      title: "Seematti",
                      aniamtedText: "Available Stock",
                      fontSize: 40,
                      color: StartingColor.customBlack,
                      fontFamily: "Cinzel-VariableFont",
                    ),
                  ));
            },
            child: Container(
              height: 230,
              //width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/textiles/seematti.jpeg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Selected_Tex(
                      fontSize: 25,
                      fontFamily: "Cinzel-VariableFont",
                      title: "lulu CELEBRATE",
                      color: StartingColor.customGold,
                      aniamtedText: "Available Stock",
                    ),
                  ));
            },
            child: Container(
              height: 230,
              //width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/textiles/lulu.webp"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Selected_Tex(
                      fontSize: 45,
                      color: StartingColor.customGold,
                      title: "Althea",
                      fontFamily: "Allura-Regular",
                      aniamtedText: "Available Stock",
                    ),
                  ));
            },
            child: Container(
              height: 230,
              //width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/textiles/athlee.jpeg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Selected_Tex(
                      fontSize: 23,
                      fontFamily: "Montserrat-VariableFont_wght",
                      color: StartingColor.customRed2,
                      title: "RADHA KRISHNA",
                      aniamtedText: "Available Stock",
                    ),
                  ));
            },
            child: Container(
              height: 230,
              //width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/textiles/radha.jpeg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );

    // ListView.separated(
    //     physics: NeverScrollableScrollPhysics(),
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) => InkWell(
    //           onTap: () {
    //             Navigator.push(
    //                 context,
    //                 MaterialPageRoute(
    //                   builder: (context) => Selected_Tex(),
    //                 ));

    //             // Navigator.push(
    //             //     context,
    //             //     MaterialPageRoute(
    //             //       builder: (context) => Selected_Tex(),
    //             //     ));
    //           },
    //           child: Container(
    //             height: 230,
    //             //width: MediaQuery.sizeOf(context).width,
    //             decoration: BoxDecoration(
    //               image: DecorationImage(
    //                   image:
    //                       NetworkImage(ImageConstants.shopImageUrlShop[index]),
    //                   fit: BoxFit.cover),
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //           ),
    //         ),
    //     separatorBuilder: (context, index) => SizedBox(
    //           height: 10,
    //         ),
    //     itemCount: ImageConstants.shopImageUrlShop.length);
  }
}
