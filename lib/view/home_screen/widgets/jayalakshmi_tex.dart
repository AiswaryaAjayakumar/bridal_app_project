// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:bridal_app_project/view/home_screen/widgets/carousel_slide_screen.dart';
import 'package:flutter/material.dart';

class Jayalaksjmi_Tex extends StatefulWidget {
  const Jayalaksjmi_Tex({super.key});

  @override
  State<Jayalaksjmi_Tex> createState() => _Jayalaksjmi_TexState();
}

class _Jayalaksjmi_TexState extends State<Jayalaksjmi_Tex> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Center(
                  child: Image(
                      image: AssetImage(
                          "assets/images/Screenshot 2024-03-22 at 1.45.53 PM.png"))),
              CarouselSlideScreen(),
              TabBar(dividerColor: Colors.white, tabs: [
                Tab(
                  child: Text("hi"),
                ),
                Tab(
                  child: Text("hi"),
                ),
                Tab(
                  child: Text("hi"),
                ),
                Tab(
                  child: Text("hi"),
                ),
                Tab(
                  child: Text("hi"),
                )
              ]),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
