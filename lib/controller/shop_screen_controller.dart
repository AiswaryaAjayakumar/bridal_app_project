// import 'package:bridal_app_project/models/product_res_model.dart.dart';
// import 'package:flutter/foundation.dart';

// class ShopScreenController with ChangeNotifier {
//   List<ShopItemsModel> shopItemModelList = [];

//   List<Map<String, dynamic>> shopItems = [
//     {
//       "img": "https://seematti.com/wp-content/uploads/2024/04/13568260-5.jpg",
//       "name": "Grape Wine Semi Banarasi Silk Saree",
//       "price": "4,761.00",
//       "des":
//           "Grape Wine Semi Banarasi Silk Saree Designer On The Body and Designer border. Includes Unstitched blouse",
//       "left": "Only 1 left in stock"
//     },
//     {
//       "img": "https://seematti.com/wp-content/uploads/2024/04/13568261-5.jpg",
//       "name": "Maroon Semi Banarasi Silk Saree",
//       "price": "4,851.00",
//       "des":
//           "Maroon Semi Banarasi Silk Saree Designer Butta On The Body and Designer border. Includes Unstitched blouse",
//       "left": "Only 1 left in stock"
//     },
//     {
//       "img": "https://seematti.com/wp-content/uploads/2024/04/13568259-5.jpg",
//       "name": "Mustard Yellow Semi Banarasi Silk Saree",
//       "price": "4,761.00",
//       "des":
//           "Mustard Yellow Semi Banarasi Silk Saree Designer On The Body and Designer border. Includes Unstitched blouse",
//       "left": "Only 1 left in stock"
//     },
//     {
//       "img": "https://seematti.com/wp-content/uploads/2024/04/13568263-5.jpg",
//       "name": "Grape Wine Semi Banarasi Silk Saree",
//       "price": "4,761.00",
//       "des": "Adgsfh",
//       "left": "Only 3 left"
//     },
//     {
//       "img": "https://seematti.com/wp-content/uploads/2024/03/13559623-4.jpg",
//       "name": "Grape Wine Semi Banarasi Silk Saree",
//       "price": "4,761.00",
//       "des": "Adgsfh",
//       "left": "Only 3 left"
//     },
//   ];
//   generteModel(){
//     shopItemModelList = shopItems
//       .map((e) => ShopItemsModel(
//           image: e["img"],
//           name: e["name"],
//           price: e["price"],
//           des: e["des"],
//           left: e["left"]))
//       .toList();
//   }

//    void addToCart1(int index) {
//     shopItemModelList.add(shopItems[index] as ShopItemsModel );

   
//     notifyListeners();
//   }
// }
