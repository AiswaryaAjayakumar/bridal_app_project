// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unnecessary_new

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bridal_app_project/utils/image_constants.dart';
import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/carousel_slide_screen.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/selected_category.dart';
import 'package:flutter/material.dart';

class Selected_Tex extends StatefulWidget {
  const Selected_Tex({super.key});

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
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://is5-ssl.mzstatic.com/image/thumb/Purple118/v4/2f/ce/25/2fce2506-bdc0-9721-64c3-1a789a04a11a/source/512x512bb.jpg"),
              ),
            ),

            floating: true,
            //backgroundColor: Colors.amber,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Jayalakshmi",
                style: TextStyle(
                    color: StartingColor.customRed,
                    fontWeight: FontWeight.bold,
                    fontSize: 37,
                    fontFamily: "OoohBaby-Regular"),
              ),
            ),
            expandedHeight: 80,
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
                ColorizeAnimatedText("Available Stock",
                    textStyle:
                        TextStyle(fontSize: 50, fontFamily: "Milonga-Regular"),
                    colors: colorizeColors),
                // TyperAnimatedText("Available Stock",
                //     textStyle: TextStyle(
                //       color: StartingColor.customPurple,
                //       fontFamily: "Milonga-Regular",
                //       fontSize: 40,
                //     ),
                //     speed: Duration(milliseconds: 100)),
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
                            image: NetworkImage(ImageConstants
                                .shopImageUrlCategory[index]["url"]),
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
