// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailedDress extends StatefulWidget {
  DetailedDress(
      {super.key,
      required this.img,
      required this.name,
      required this.price,
      required this.des,
      required this.left});
  final String img;
  final String name;
  final String price;
  final String des;
  final String left;

  @override
  State<DetailedDress> createState() => _DetailedDressState();
}

class _DetailedDressState extends State<DetailedDress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ZAUM",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: "ArtographieLight",
                          color: StartingColor.customPurple),
                    ),
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
                  ],
                ),
              ),
              Stack(children: [
                Image.network(
                  widget.img,
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: StartingColor.customBlack,
                      size: 25,
                    )),
              ]),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 20,
                        ),
                        Text(
                          widget.price,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(widget.des),
                    Text(widget.left),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: StartingColor.customGrey)),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: StartingColor.customPurple,
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      shadowColor: StartingColor.customBlack,
                      backgroundColor: Color.fromARGB(255, 241, 204, 247),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag,
                      color: StartingColor.customPurple,
                    ),
                    label: Text(
                      "ADD TO CART",
                      style: TextStyle(color: StartingColor.customPurple),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
