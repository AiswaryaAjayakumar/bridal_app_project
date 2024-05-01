// ignore_for_file: unused_local_variable

void main() {
  List<Map<String, dynamic>> shopItems = [
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

  List<ShopItemsModel> shopItemModelList = shopItems
      .map((e) => ShopItemsModel(
          image: e["img"],
          name: e["name"],
          price: e["price"],
          des: e["des"],
          left: e["left"]))
      .toList();

  
}

class ShopItemsModel {
  String image;
  String name;
  String price;
  String des;
  String left;
  ShopItemsModel({
    required this.image,
    required this.name,
    required this.price,
    required this.des,
    required this.left,
  });
}
