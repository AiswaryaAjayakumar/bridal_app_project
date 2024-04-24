// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/home_screen.dart';
import 'package:bridal_app_project/view/home_screen/widgets/map_screen.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            icon: Icon(Icons.chevron_left)),
        title: Text("Kochi"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextFormField(
              style: TextStyle(height: 1),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: StartingColor.customGrey,
                  ),
                  hintText: "Search city",
                  hintStyle: TextStyle(color: StartingColor.customGrey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: StartingColor.customGrey))),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.my_location_sharp,
                    color: StartingColor.customPurple,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapScreen(),
                            ));
                      },
                      child: Text(
                        "Auto Detect My Location",
                        style: TextStyle(color: StartingColor.customPurple),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
