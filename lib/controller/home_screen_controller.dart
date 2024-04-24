// // ignore_for_file: avoid_print

// import 'dart:convert';
// import 'dart:developer';

// import 'package:bridal_app_project/models/product_res_model.dart.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class HomeScreenController with ChangeNotifier {
//   List<PrdResModel> prdctList = [];
//   bool isLoading = false;

//   getProducts() async {
//     isLoading = true;
//     notifyListeners();
//     final url = Uri.parse("https://fakestoreapi.com/products");

//     try {
//       final res = await http.get(url);
//       if (res.statusCode == 200) {
//         final decodedRes = jsonDecode(res.body) as List;
//         // log(decodedRes.toString());
//         prdctList = decodedRes.map((e) => PrdResModel.fromJson(e)).toList();
//         // log(prdctList.first.title.toString());
//       } else {
//         log("failed");
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//     isLoading = false;
//     notifyListeners();
//   }
// }
