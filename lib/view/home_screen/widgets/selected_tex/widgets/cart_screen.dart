// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import

import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/confirm_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              
               
                   
              // ElevatedButton(
              //   onPressed: () {
              //     showDialog(
              //       context: context,
              //       builder: (context) => AlertDialog(
              //         title: Text(
              //           "Alert",
              //           style: TextStyle(
              //               fontSize: 30, fontWeight: FontWeight.bold),
              //         ),
              //         content: Text("Are you sure about your order"),
              //         actions: [
              //           TextButton(
              //               onPressed: () {
              //                 Navigator.pop(context);
              //               },
              //               child: Text("Cancel")),
              //           TextButton(
              //               onPressed: () {
              //                 Navigator.push(
              //                     context,
              //                     MaterialPageRoute(
              //                       builder: (context) => ConfirmTrial(),
              //                     ));
              //               },
              //               child: Text("Confirm"))
              //         ],
              //       ),
              //     );
              //   },
              //   child: Text("Confirm trial"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
