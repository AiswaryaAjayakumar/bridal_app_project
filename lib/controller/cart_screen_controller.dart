import 'package:flutter/material.dart';

class CartScreenController with ChangeNotifier {
  static List<Map> shopItems = [
    {
      "id": "1",
      "img": "https://seematti.com/wp-content/uploads/2024/04/13568260-5.jpg",
      "name": "Grape Wine Semi Banarasi Silk Saree",
      "price": "4,761.00",
      "des":
          "Grape Wine Semi Banarasi Silk Saree Designer On The Body and Designer border. Includes Unstitched blouse",
      "left": "Only 1 left in stock"
    },
    {
      "id": "2",
      "img": "https://seematti.com/wp-content/uploads/2024/04/13568261-5.jpg",
      "name": "Maroon Semi Banarasi Silk Saree",
      "price": "4,851.00",
      "des":
          "Maroon Semi Banarasi Silk Saree Designer Butta On The Body and Designer border. Includes Unstitched blouse",
      "left": "Only 5 left in stock"
    },
    {
      "id": "3",
      "img": "https://seematti.com/wp-content/uploads/2024/04/13568259-5.jpg",
      "name": "Mustard Yellow Semi Banarasi Silk Saree",
      "price": "4,761.00",
      "des":
          "Mustard Yellow Semi Banarasi Silk Saree Designer On The Body and Designer border. Includes Unstitched blouse",
      "left": "Only 1 left in stock"
    },
    {
      "id": "4",
      "img": "https://seematti.com/wp-content/uploads/2024/04/13568263-5.jpg",
      "name": "Light Green Semi Banarasi Silk Saree",
      "price": "5,761.00",
      "des":
          "Light Green Semi Banarasi Silk Saree Butta Design On The Body and Designer border. Includes Unstitched blouse",
      "left": "Only 2 left"
    },
    {
      "id": "5",
      "img": "https://seematti.com/wp-content/uploads/2024/03/13559623-4.jpg",
      "name": "Black Semi Banarasi Silk Saree",
      "price": "4,999.00",
      "des":
          "Black Semi Banarasi Silk Saree Butta Design On The Body and Designer border. Includes Unstitched blouse",
      "left": "Only 4 left"
    },
  ];

  bool isLoading = false;
  List cartItems = [];

  get shopItemList => shopItems;
  get cartItemList => cartItems;

  void addToCart(int index, BuildContext context) {
    cartItems.add(shopItems[index]);

    isLoading = true;
    notifyListeners();
  }

  void deleteItem(int index) {
    isLoading = true;
    cartItems.removeAt(index);
    notifyListeners();
  }

  // static List<Map> shopItems1 = [
  //   {
  //     "id": "1",
  //     "img": "https://seematti.com/wp-content/uploads/2024/04/13588948-5.jpg",
  //     "name": "Rani Pink Kancheepuram Soft Silk Saree",
  //     "price": "12,050.00",
  //     "des":
  //         "Rani Pink Kancheepuram Soft Silk Saree Designer Butta On The Body and Without border. Includes Unstitched blouse",
  //     "left": "Only 1 left in stock"
  //   },
  //   {
  //     "id": "2",
  //     "img": "https://seematti.com/wp-content/uploads/2024/04/13588986-5.jpg",
  //     "name": "Peacock Blue Kancheepuram Soft Silk Saree",
  //     "price": "13,365.00",
  //     "des":
  //         "Peacock Blue Kancheepuram Soft Silk Saree Lines On The Body and Designer border. Includes Unstitched blouse",
  //     "left": "Only 5 left in stock"
  //   },
  //   {
  //     "id": "3",
  //     "img": "https://seematti.com/wp-content/uploads/2024/04/13588991-5.jpg",
  //     "name": "Peacock Blue Kancheepuram Soft Silk Saree",
  //     "price": "11,385.00",
  //     "des":
  //         "Peacock Blue Kancheepuram Soft Silk Saree Designer Butta On The Body and Plain border. Includes Unstitched blouse",
  //     "left": "Only 1 left in stock"
  //   },
  //   {
  //     "id": "4",
  //     "img": "https://seematti.com/wp-content/uploads/2024/04/13588949-5.jpg",
  //     "name": "Pink Kancheepuram Soft Silk Saree",
  //     "price": "5,761.00",
  //     "des":
  //         "Pink Kancheepuram Soft Silk Saree Designer  On The Body and Without border. Includes Unstitched blouse",
  //     "left": "Only 2 left"
  //   },
  //   {
  //     "id": "5",
  //     "img": "https://seematti.com/wp-content/uploads/2024/04/13588971-5.jpg",
  //     "name": "BPastel Lavender Kancheepuram Soft Silk Saree",
  //     "price": "12,050.00",
  //     "des":
  //         "Pastel Lavender Kancheepuram Soft Silk Saree Designer Butta On The Body and Without border. Includes Unstitched blouse",
  //     "left": "Only 4 left"
  //   },
  // ];

  // bool isLoading1 = false;
  // List cartItems1 = [];

  // get shopItemList1 => shopItems1;
  // get cartItemList1 => cartItems1;

  // void addToCart1(int index, BuildContext context) {
  //   cartItems.add(shopItems[index]);

  //   isLoading = true;
  //   notifyListeners();
  // }

  // void deleteItem1(int index) {
  //   isLoading = true;
  //   cartItems.removeAt(index);
  //   notifyListeners();
  // }
}
