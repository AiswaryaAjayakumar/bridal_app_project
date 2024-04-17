// ignore_for_file: prefer_const_constructors



import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class SearchItemScreen extends StatefulWidget {
  const SearchItemScreen({super.key});

  @override
  State<SearchItemScreen> createState() => _SearchItemScreenState();
}

class _SearchItemScreenState extends State<SearchItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StartingColor.customGrey,
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              style: TextStyle(height: 1),
              decoration: InputDecoration(
                  filled: true,
                  hoverColor: StartingColor.customPurple,
                  fillColor: Color.fromARGB(226, 187, 185, 185),
                  prefixIcon: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      },
                      child: Icon(Icons.arrow_back)),
                  hintText: "Search Textiles",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            // Container(
            //   height: 100,
            //   width: MediaQuery.sizeOf(context).width,
            //   color: StartingColor.customWhite,
            //   child: Text("POPULAR TYPES"),
            // )
          ],
        ),
      ),
    );
  }
}
