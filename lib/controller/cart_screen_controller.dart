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

import 'package:flutter/material.dart';

class CartScreenController with ChangeNotifier {
  // final List shopItems = [
  //   [
  //     "https://seematti.com/wp-content/uploads/2024/03/13559623-4.jpg",
  //     "Banarasi",
  //     "des",
  //     "7,677",
  //     "left"
  //   ],
  //   [
  //     "https://seematti.com/wp-content/uploads/2024/03/13559623-4.jpg",
  //     "Banarasi",
  //     "des",
  //     "7,677",
  //     "left"
  //   ],
  //   [
  //     "https://seematti.com/wp-content/uploads/2024/03/13559623-4.jpg",
  //     "Banarasi",
  //     "des",
  //     "7,677",
  //     "left"
  //   ],
  //   [
  //     "https://seematti.com/wp-content/uploads/2024/03/13559623-4.jpg",
  //     "Banarasi",
  //     "des",
  //     "7,677",
  //     "left"
  //   ],
  //   [
  //     "https://seematti.com/wp-content/uploads/2024/03/13559623-4.jpg",
  //     "Banarasi",
  //     "des",
  //     "7,677",
  //     "left"
  //   ],
  //   [
  //     "https://seematti.com/wp-content/uploads/2024/03/13559623-4.jpg",
  //     "Banarasi",
  //     "des",
  //     "7,677",
  //     "left"
  //   ]
  // ];

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

  void addToCart(int index) {
    isLoading = true;
    cartItems.add(shopItems[index]);
    notifyListeners();
  }

  void deleteItem(int index) {
    isLoading = true;
    cartItems.removeAt(index);
    notifyListeners();
  }
}
