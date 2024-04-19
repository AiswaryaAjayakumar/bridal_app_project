// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bridal_app_project/utils/image_constants.dart';
import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/custom_filters_show_model_bottom.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/detailed_dress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Selectedcategory extends StatefulWidget {
  const Selectedcategory({super.key});

  @override
  State<Selectedcategory> createState() => _SelectedcategoryState();
}

class _SelectedcategoryState extends State<Selectedcategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 40,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.price_change,
                      color: StartingColor.customWhite,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "PRICE",
                      style: TextStyle(color: StartingColor.customWhite),
                    ),
                  ],
                ),
              ),
              VerticalDivider(),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    elevation: 10,
                    context: context,
                    builder: (context) => CustomFiltersShowModelBottom(),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.filter_list,
                      color: StartingColor.customWhite,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "FILTERS",
                      style: TextStyle(color: StartingColor.customWhite),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/alert.png",
                    color: StartingColor.customPurple,
                    scale: 25,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/favorite.png",
                    color: StartingColor.customPurple,
                    scale: 25,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/shopping-bag (1).png",
                    color: StartingColor.customPurple,
                    scale: 25,
                  )),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 25),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: ImageConstants.detailsImage.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 15,
                mainAxisExtent: 380,
                crossAxisSpacing: 15,
                crossAxisCount: 2),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailedDress(
                        img: ImageConstants.detailsImage[index]["img"]
                            .toString(),
                        name: ImageConstants.detailsImage[index]["name"]
                            .toString(),
                        price: ImageConstants.detailsImage[index]["price"]
                            .toString(),
                        des: ImageConstants.detailsImage[index]["des"]
                            .toString(),
                        left: ImageConstants.detailsImage[index]["left"]
                            .toString(),
                      ),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     image: NetworkImage(
                  //         "https://seematti.com/wp-content/uploads/2024/04/13568260-5.jpg"),
                  //     fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(97, 206, 203, 203),
                      blurRadius: 90,
                    ),
                  ],
                  // color: Colors.amber,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      constraints: const BoxConstraints(
                        maxWidth: 300,
                        maxHeight: 100,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: NetworkImage(
                                ImageConstants.detailsImage[index]["img"]),
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: Text(
                            ImageConstants.detailsImage[index]["name"],
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 17,
                              ),
                              Text(
                                ImageConstants.detailsImage[index]["price"]
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Image(
          //         image: NetworkImage(
          //             "https://seematti.com/wp-content/uploads/2024/04/13568260-5.jpg")),
          // SizedBox(
          //   height: 20,
          // ),
          // Center(child: Text("Navy blue")),
          // Center(child: Text("Navy blue")),
          // Center(child: Text("Navy blue")),
          //   ],
          // ),
        ]),
      ),
    );
  }
}
