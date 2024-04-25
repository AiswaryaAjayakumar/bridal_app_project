// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, avoid_unnecessary_containers, sort_child_properties_last, unused_local_variable, prefer_final_fields

import 'package:bridal_app_project/controller/cart_screen_controller.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/confirm_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Consumer<CartScreenController>(
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: value.cartItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                      // width: 200,
                      //color: Colors.amber,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              width: double.infinity,
                              height: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        value.cartItems[index]["img"] ?? ""),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                                //color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  value.cartItems[index]["name"],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  value.cartItems[index]["price"],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                Provider.of<CartScreenController>(context,
                                        listen: false)
                                    .deleteItem(index);
                              },
                              icon: Icon(Icons.delete))
                        ],
                      ),
                    ),
                    // separatorBuilder: (context, index) => SizedBox(
                    //   height: 10,
                    // ),
                    // itemCount: 3,
                  );
                },
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
                            },
                            child: Text("Cancel")),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ConfirmTrial(),
                                  ));
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
        ),
      ),
    );
  }
}
