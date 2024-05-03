// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:bridal_app_project/controller/cart_screen_controller.dart';
import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/confirm_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController dateController = TextEditingController();
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => CartScreen(),
                  //     ));
                },
                icon: Image.asset(
                  "assets/images/shopping-bag (1).png",
                  color: StartingColor.customPurple,
                  scale: 25,
                )),
          ],
        ),
        body:
            Consumer<CartScreenController>(builder: (context, providerObj, _) {
          return Form(
            key: _formKey,
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: providerObj.cartItems.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(4, 6),
                              blurRadius: 6,
                              color: Colors.black.withOpacity(.4),
                            )
                          ]),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: NetworkImage(
                                        providerObj.cartItems[index]["img"] ??
                                            ""))),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    providerObj.cartItems[index]["name"]
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)

                                    // overflow: TextOverflow.ellipsis,
                                    ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      size: 17,
                                    ),
                                    Text(
                                        providerObj.cartItems[index]["price"]
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                  onTap: () {
                                    providerObj.deleteItem(index);
                                  },
                                  child: Icon(Icons.delete)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Text("Confirm Your Trail Day"),
                              TextFormField(
                                readOnly: true,
                                validator: (value) {
                                  if (dateController.text.isNotEmpty) {
                                    return null;
                                  } else {
                                    return "Enter a valid date";
                                  }
                                },
                                controller: dateController,
                                decoration: InputDecoration(
                                    suffixIcon: InkWell(
                                        onTap: () async {
                                          final DateTime? selectedDate =
                                              await showDatePicker(
                                                  context: context,
                                                  firstDate: DateTime(2000),
                                                  lastDate: DateTime(2025));
                                          if (selectedDate != null) {
                                            String formatedDate =
                                                DateFormat("dd/MM/yyyy")
                                                    .format(selectedDate);

                                            dateController.text = formatedDate;
                                          }
                                        },
                                        child: Icon(Icons.calendar_month))),
                              ),
                            ],
                          ),
                        ),
                        // title: Text(
                        //   "Alert",
                        //   style: TextStyle(
                        //       fontSize: 30, fontWeight: FontWeight.bold),
                        // ),
                        content: Text("Are you sure about your order"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CartScreen(),
                                    ));
                              },
                              child: Text("Cancel")),
                          TextButton(
                              onPressed: () {
                                if (dateController.text.isNotEmpty) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ConfirmTrial(),
                                      ));
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("Please Select Date"),
                                    backgroundColor: Colors.red,
                                  ));
                                }
                              },
                              child: Text("Confirm"))
                        ],
                      ),
                    );
                  },
                  child: Text("Confirm trial"),
                )
              ],
            ),
          );
        }));
  }
}
