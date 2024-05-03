// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/category_screen/widgets/details_category.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              },
              icon: Image.asset(
                "assets/images/shopping-bag (1).png",
                color: StartingColor.customPurple,
                scale: 25,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsCategoryScreen(
                          des:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          image:
                              "https://seematti.com/wp-content/uploads/2024/02/13535141-5.jpg",
                          title: "Banarasi",
                        ),
                      ));
                },
                child: Stack(children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height / 6.9,
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //     image: NetworkImage(
                        //         "https://seematti.com/wp-content/uploads/2024/03/13544477-6.jpg"),
                        // fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 15)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 138, 47, 154)),
                  ),
                  Positioned(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 20,
                      child: Center(
                          child: Text(
                        "Banarasi ",
                        style: TextStyle(
                            color: StartingColor.customWhite, fontSize: 30),
                      )))
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsCategoryScreen(
                          des:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          image:
                              "https://seematti.com/wp-content/uploads/2024/03/13544477-6.jpg",
                          title: "Soft Silk",
                        ),
                      ));
                },
                child: Stack(children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height / 6.9,
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //     image: NetworkImage(
                        //         "https://seematti.com/wp-content/uploads/2024/03/13544477-6.jpg"),
                        // fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 15)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 138, 47, 154)),
                  ),
                  Positioned(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 20,
                      child: Center(
                          child: Text(
                        "Soft Silk ",
                        style: TextStyle(
                            color: StartingColor.customWhite, fontSize: 30),
                      )))
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsCategoryScreen(
                          des:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          image:
                              "https://seematti.com/wp-content/uploads/2023/09/13432108-4.jpg",
                          title: "Chandheri",
                        ),
                      ));
                },
                child: Stack(children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height / 6.9,
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //     image: NetworkImage(
                        //         "https://seematti.com/wp-content/uploads/2024/03/13544477-6.jpg"),
                        // fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 15)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 138, 47, 154)),
                  ),
                  Positioned(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 20,
                      child: Center(
                          child: Text(
                        "Chandheri ",
                        style: TextStyle(
                            color: StartingColor.customWhite, fontSize: 30),
                      )))
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsCategoryScreen(
                          des:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          image:
                              "https://seematti.com/wp-content/uploads/2022/09/13081549-5.jpg",
                          title: "Kancheepuram",
                        ),
                      ));
                },
                child: Stack(children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height / 6.9,
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //     image: NetworkImage(
                        //         "https://seematti.com/wp-content/uploads/2024/03/13544477-6.jpg"),
                        // fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 15)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 138, 47, 154)),
                  ),
                  Positioned(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 20,
                      child: Center(
                          child: Text(
                        "Kancheepuram ",
                        style: TextStyle(
                            color: StartingColor.customWhite, fontSize: 30),
                      )))
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsCategoryScreen(
                          des:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          image:
                              "https://seematti.com/wp-content/uploads/2024/03/13545692-5.jpg",
                          title: "Tissue Silks",
                        ),
                      ));
                },
                child: Stack(children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height / 6.9,
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //     image: NetworkImage(
                        //         "https://seematti.com/wp-content/uploads/2024/03/13544477-6.jpg"),
                        // fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 15)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 138, 47, 154)),
                  ),
                  Positioned(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 20,
                      child: Center(
                          child: Text(
                        "Tissue Silks",
                        style: TextStyle(
                            color: StartingColor.customWhite, fontSize: 30),
                      )))
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
