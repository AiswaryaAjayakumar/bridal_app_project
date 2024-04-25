// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unnecessary_new

import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:bridal_app_project/utils/image_constants.dart';
import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/carousel_slide_screen.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/selected_category.dart';
import 'package:flutter/material.dart';

class Selected_Tex extends StatefulWidget {
  const Selected_Tex({
    super.key,
    required this.title,
    this.aniamtedText,
    this.categoryList,
    this.fontSize = 35,
    this.fontFamily = "OoohBaby-Regular",
    required this.color,
  });
  final String title;
  final double fontSize;
  final String? aniamtedText;
  final String? categoryList;
  final String fontFamily;
  final Color color;

  @override
  State<Selected_Tex> createState() => _Selected_TexState();
}

class _Selected_TexState extends State<Selected_Tex> {
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,

            floating: true,
            //backgroundColor: Colors.amber,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.title,
                style: TextStyle(
                    color: widget.color,
                    fontWeight: FontWeight.w700,
                    fontSize: widget.fontSize,
                    fontFamily: widget.fontFamily),
              ),
            ),
            expandedHeight: 90,
            // title: Text(
            //   "Jayalakshmi",
            //   style: TextStyle(
            //       color: StartingColor.customRed,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 50,
            //       fontFamily: "OoohBaby-Regular"),
            // ),
          ),
          SliverToBoxAdapter(
            child: CarouselSlideScreen(),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
                child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(widget.aniamtedText.toString(),
                    textStyle:
                        TextStyle(fontSize: 50, fontFamily: "Milonga-Regular"),
                    colors: colorizeColors),
              ],
              isRepeatingAnimation: true,
              totalRepeatCount: 20,
            )),
          ),

          // SliverGrid(
          //     delegate: SliverChildListDelegate([
          //       CircleAvatar(
          //         backgroundImage: NetworkImage(
          //             "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=800"),
          //       ),
          //       CircleAvatar(
          //         backgroundImage: NetworkImage(
          //             "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=800"),
          //       ),
          //       CircleAvatar(
          //         backgroundImage: NetworkImage(
          //             "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=800"),
          //       ),
          //       CircleAvatar(
          //         backgroundImage: NetworkImage(
          //             "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=800"),
          //       ),
          //       CircleAvatar(
          //         backgroundImage: NetworkImage(
          //             "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=800"),
          //       ),
          // CircleAvatar(
          //   backgroundImage: NetworkImage(
          //       "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=800"),
          // ),
          //     ]),
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //
          //     crossAxisCount: 3))

          SliverGrid.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.7, crossAxisCount: 2),
            itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Selectedcategory(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageConstants
                                .shopImageUrlCategory[index]["url"]
                                .toString()),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            // blurRadius: 6,
                          ),
                        ]),
                    child: Center(
                        child: Text(
                      ImageConstants.shopImageUrlCategory[index]["name"],
                      style: TextStyle(
                          color: StartingColor.customWhite,
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          decorationColor: StartingColor.customWhite,
                          fontFamily: "Milonga-Regular",
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                )),
          )

          // child: Column(
          //   children: [
          //     Center(
          //         child: Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 10),
          //       child: Row(
          //         children: [
          //           Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
          //           Text(
          //             "Jayalakshmi",
          //             style: TextStyle(
          //                 color: StartingColor.customRed,
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 60,
          //                 fontFamily: "OoohBaby-Regular"),
          //           ),
          //           Spacer(),
          //           IconButton(
          //             onPressed: () {},
          //             icon: Icon(Icons.menu),
          //             color: StartingColor.customPurple,
          //           ),
          //         ],
          //       ),
          //     )),
        ]),
      ),
    );
  }
}
