// ignore_for_file: prefer_const_constructors

import 'package:bridal_app_project/utils/image_constants.dart';
import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/carousel_slide_screen.dart';
import 'package:flutter/material.dart';

class DetailsCategoryScreen extends StatefulWidget {
  DetailsCategoryScreen(
      {super.key, required this.des, required this.image, required this.title});

  String image;
  String des;
  String title;

  @override
  State<DetailsCategoryScreen> createState() => _DetailsCategoryScreenState();
}

class _DetailsCategoryScreenState extends State<DetailsCategoryScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(color: StartingColor.customPurple, fontSize: 40),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
             
              Container(
                height: MediaQuery.sizeOf(context).height / 2.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.des,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ));
  }
}
