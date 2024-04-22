// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/cart_screen.dart';

import 'package:flutter/material.dart';

import 'package:flutter_add_to_cart_button/flutter_add_to_cart_button.dart';

import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

class DetailedDress extends StatefulWidget {
  DetailedDress({
    super.key,
    required this.img,
    required this.name,
    required this.price,
    required this.des,
    required this.left,
  });
  final String img;
  final String name;
  final String price;
  final String des;
  final String left;

  @override
  State<DetailedDress> createState() => _DetailedDressState();
}

class _DetailedDressState extends State<DetailedDress> {
  AddToCartButtonStateId stateId = AddToCartButtonStateId.idle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                        Stack(children: [
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
                          Positioned(
                            top: 0,
                            left: 12,
                            bottom: 14,
                            child: PersistentShoppingCart()
                                .showCartItemCountWidget(
                              cartItemCountWidgetBuilder: (itemCount) =>
                                  IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  CartScreen(),
                                            ));
                                      },
                                      icon: Badge(
                                        label: Text(itemCount.toString()),
                                      )),
                            ),
                          )
                        ]),
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
                    ),
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: AddToCartButton(
                  trolley: Image.asset(
                    "assets/images/shopping-cart.png",
                    color: StartingColor.customPurple,
                    width: 40,
                    height: 40,
                  ),
                  text: Text(
                    "ADD TO CART",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: StartingColor.customPurple,
                      fontSize: 18,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                  ),
                  check: SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.check,
                      color: StartingColor.customPurple,
                      size: 24,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(30),
                  backgroundColor: Color.fromARGB(255, 231, 177, 239),
                  onPressed: (id) {
                    if (id == AddToCartButtonStateId.idle) {
                      //handle logic when pressed on idle state button.
                      setState(() {
                        stateId = AddToCartButtonStateId.loading;
                        Future.delayed(Duration(seconds: 3), () {
                          setState(() {
                            stateId = AddToCartButtonStateId.done;
                          });
                        });
                      });
                    } else if (id == AddToCartButtonStateId.done) {
                      //handle logic when pressed on done state button.
                      setState(() {
                        stateId = AddToCartButtonStateId.idle;
                      });
                    }
                  },
                  stateId: stateId,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
