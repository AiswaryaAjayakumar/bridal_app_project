import 'dart:html';

import 'package:bridal_app_project/controller/cart_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

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
      body: Consumer<CartScreenController>(
        builder: (context, providerObj, _) {
          // Check if cart has reached the maximum limit
          bool isCartFull = providerObj.banarasi >= 6;

          return Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Existing code for displaying cart items
                  // ...

                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: isCartFull
                        ? null // Disable button if cart is full
                        : () {
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
                                                lastDate: DateTime(2025),
                                              );
                                              if (selectedDate != null) {
                                                String formattedDate =
                                                    DateFormat("dd/MM/yyyy")
                                                        .format(selectedDate);
                                                dateController.text =
                                                    formattedDate;
                                              }
                                            },
                                            child: Icon(Icons.calendar_month),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                content: Text("Are you sure about your order"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Cancel"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      // Check if a date is selected
                                      if (dateController.text.isNotEmpty) {
                                        // Perform further actions here
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text("Please Select a Date"),
                                          backgroundColor: Colors.red,
                                        ));
                                      }
                                    },
                                    child: Text("Confirm"),
                                  ),
                                ],
                              ),
                            );
                          },
                    child: Text("Confirm trial"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
