// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables, sort_child_properties_last, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers, use_build_context_synchronously, avoid_print

import 'package:bridal_app_project/controller/cart_screen_controller.dart';
import 'package:bridal_app_project/global__widgets/reusable_loading.dart';
import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/home_screen.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/cart_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:favorite_button/favorite_button.dart';

import 'package:flutter/material.dart';

import 'package:flutter_add_to_cart_button/flutter_add_to_cart_button.dart';
import 'package:provider/provider.dart';

class DetailedDress extends StatefulWidget {
  DetailedDress(
      {Key? key,
      required this.img,
      required this.name,
      required this.price,
      required this.des,
      required this.left,
      required this.onSavePressed});
  final String img;
  final String name;
  final String price;
  final String des;
  final String left;
  final void Function() onSavePressed;

  @override
  State<DetailedDress> createState() => _DetailedDressState();
}

class _DetailedDressState extends State<DetailedDress> {
  AddToCartButtonStateId stateId = AddToCartButtonStateId.idle;
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("items");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                      },
                      child: Text(
                        "ZAUM",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "ArtographieLight",
                            color: StartingColor.customPurple),
                      ),
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
                CachedNetworkImage(
                  imageUrl: widget.img,
                  placeholder: (context, url) => ReUsableLoading(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                // Image.network(
                //   widget.img,
                //   height: MediaQuery.of(context).size.height / 1.4,
                //   width: MediaQuery.of(context).size.width,
                //   fit: BoxFit.cover,
                // ),
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
                      child: FavoriteButton(
                        iconSize: 40,
                        iconColor: StartingColor.customPurple,
                        iconDisabledColor: StartingColor.customGrey,
                        isFavorite: false,
                        valueChanged: (_isFavorite) {
                          //  print('Is Favorite : $_isFavorite');
                        },
                      ),
                    )
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
                  onPressed: (id) async {
                    if (id == AddToCartButtonStateId.idle) {
                      // Check if the item is already in the cart
                      bool isAlreadyInCart = Provider.of<CartScreenController>(
                              context,
                              listen: false)
                          .kanchipuramCartItem
                          .any((item) => item["name"] == widget.name);

                      if (!isAlreadyInCart) {
                        setState(() {
                          stateId = AddToCartButtonStateId.loading;
                        });

                        try {
                          // Add item details to Firebase Firestore
                          await FirebaseFirestore.instance
                              .collection('cart')
                              .add({
                            'img': widget.img,
                            'name': widget.name,
                            'price': widget.price,
                            'des': widget.des,
                            'left': widget.left,
                            // Add any other fields you need
                          });

                          // Set state to done after successful addition
                          setState(() {
                            stateId = AddToCartButtonStateId.done;
                          });

                          // Call the onSavePressed callback to update the UI or perform any other action
                          widget.onSavePressed();

                          // Show a confirmation snackbar or dialog
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Item added to cart'),
                            backgroundColor: Colors.green,
                          ));
                        } catch (e) {
                          print('Error adding item to cart: $e');
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Error adding item to cart'),
                            backgroundColor: Colors.red,
                          ));
                          setState(() {
                            stateId = AddToCartButtonStateId.idle;
                          });
                        }
                      } else {
                        // Item already exists in the cart
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Item is already in the cart'),
                          backgroundColor: Colors.orange,
                        ));
                      }
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
