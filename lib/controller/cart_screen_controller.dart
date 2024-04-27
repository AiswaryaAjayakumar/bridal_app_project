// import 'package:bridal_app_project/models/cart_model.dart';
// import 'package:bridal_app_project/models/product_res_model.dart.dart';
// import 'package:flutter/material.dart';

// class CartScreenController with ChangeNotifier {
//   List<CartModel> cartList = [];
//   addToCart(PrdResModel product) {
//     cartList.add(CartModel(product: product));
//     notifyListeners();
//   }

//   deleteCart(int index) {
//     cartList.removeAt(index);
//     notifyListeners();
//   }
// }

// ignore_for_file: prefer_const_constructors

import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CartScreenController with ChangeNotifier {
  var myBox = Hive.box("items");

  static List<Map> shopItems = [
    {
      "img": "https://seematti.com/wp-content/uploads/2024/04/13568260-5.jpg",
      "name": "Grape Wine Semi Banarasi Silk Saree",
      "price": "4,761.00",
      "des":
          "Grape Wine Semi Banarasi Silk Saree Designer On The Body and Designer border. Includes Unstitched blouse",
      "left": "Only 1 left in stock"
    },
    {
      "img": "https://seematti.com/wp-content/uploads/2024/04/13568261-5.jpg",
      "name": "Maroon Semi Banarasi Silk Saree",
      "price": "4,851.00",
      "des":
          "Maroon Semi Banarasi Silk Saree Designer Butta On The Body and Designer border. Includes Unstitched blouse",
      "left": "Only 1 left in stock"
    },
    {
      "img": "https://seematti.com/wp-content/uploads/2024/04/13568259-5.jpg",
      "name": "Mustard Yellow Semi Banarasi Silk Saree",
      "price": "4,761.00",
      "des":
          "Mustard Yellow Semi Banarasi Silk Saree Designer On The Body and Designer border. Includes Unstitched blouse",
      "left": "Only 1 left in stock"
    },
    {
      "img": "https://seematti.com/wp-content/uploads/2024/04/13568263-5.jpg",
      "name": "Grape Wine Semi Banarasi Silk Saree",
      "price": "4,761.00",
      "des": "Adgsfh",
      "left": "Only 3 left"
    },
    {
      "img": "https://seematti.com/wp-content/uploads/2024/03/13559623-4.jpg",
      "name": "Grape Wine Semi Banarasi Silk Saree",
      "price": "4,761.00",
      "des": "Adgsfh",
      "left": "Only 3 left"
    },
  ];


  
  bool isLoading = false;
  List cartItems = [];

  get shopItemList => shopItems;
  get cartItemList => cartItems;

  void addToCart(int index, BuildContext context) {
    final isCartAdd =
        cartItems.any((element) => element[index] == element[index]);

    if (isCartAdd) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Already in cart"),
        backgroundColor: Colors.red,
      ));
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CartScreen(),
          ));
    } else {
      cartItems.add(shopItems[index]);
    }

    isLoading = true;
    notifyListeners();
  }

  void deleteItem(int index) {
    isLoading = true;
    cartItems.removeAt(index);
    notifyListeners();
  }
}
