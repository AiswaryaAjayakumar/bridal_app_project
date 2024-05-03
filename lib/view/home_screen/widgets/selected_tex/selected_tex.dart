// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unnecessary_new

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bridal_app_project/controller/cart_screen_controller.dart';
import 'package:bridal_app_project/utils/image_constants.dart';
import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';

import 'package:bridal_app_project/view/home_screen/widgets/carousel_slide_screen.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/selected_categories/banarasi_category.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/selected_categories/kanchipuram_category.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/selected_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class Selected_Tex extends StatefulWidget {
  const Selected_Tex({
    super.key,
    required this.title,
    required this.fontSize,
    required this.fontFamily,
    required this.color,
    required this.carousel,
    required this.font,
  });
  final String title;
  final double fontSize;

  final String fontFamily;
  final FontWeight font;
  final Color color;
  final Widget carousel;

  @override
  State<Selected_Tex> createState() => _Selected_TexState();
}

class _Selected_TexState extends State<Selected_Tex> {
  CartScreenController cartScreenController = CartScreenController();
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          widget.title,
          style: TextStyle(
              color: widget.color,
              fontFamily: widget.fontFamily,
              fontSize: widget.fontSize,
              fontWeight: widget.font),
        ),
        SizedBox(
          height: 7,
        ),
        widget.carousel,
        // CarouselSlideScreen(

        // ),
        SizedBox(
          height: 20,
        ),
        AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText("Available Stock",
                textStyle:
                    TextStyle(fontSize: 50, fontFamily: "Milonga-Regular"),
                colors: colorizeColors),
          ],
          isRepeatingAnimation: true,
          totalRepeatCount: 20,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BanarasiCategory(),
                      ));
                },
                child: SelectedContainer(
                  imgUrl: "assets/textiles/banarasi.webp",
                  name: "Banarasi\nSarees",
                ),
              )),
              SizedBox(
                width: 15,
              ),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BanarasiCategory(),
                      ));
                },
                child: SelectedContainer(
                  imgUrl: "assets/textiles/kancheepuram.webp",
                  name: "Kanchipuram\nSarees",
                ),
              )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BanarasiCategory(),
                      ));
                },
                child: SelectedContainer(
                  imgUrl: "assets/textiles/kasavu.jpeg",
                  name: "Kasavu\nSarees",
                ),
              )),
              SizedBox(
                width: 15,
              ),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BanarasiCategory(),
                      ));
                },
                child: SelectedContainer(
                  imgUrl: "assets/textiles/chanderi.webp",
                  name: "Chandheri\nSarees",
                ),
              )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BanarasiCategory(),
                      ));
                },
                child: SelectedContainer(
                  imgUrl: "assets/textiles/soft-silk.webp",
                  name: "Soft Silk\nSarees",
                ),
              )),
              SizedBox(
                width: 15,
              ),
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BanarasiCategory(),
                      ));
                },
                child: SelectedContainer(
                  imgUrl: "assets/textiles/tissue.webp",
                  name: "Tissue Silk\nsarees",
                ),
              )),
            ],
          ),
        ),
      ])),
    ));
  }
}
