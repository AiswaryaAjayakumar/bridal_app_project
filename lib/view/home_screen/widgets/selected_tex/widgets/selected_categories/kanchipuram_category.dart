// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:bridal_app_project/controller/cart_screen_controller.dart';
// import 'package:bridal_app_project/global__widgets/reusable_loading.dart';

// import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
// import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/cart_screen.dart';
// import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/custom_filters_show_model_bottom.dart';
// import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/detailed_dress.dart';
// import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/price_custom_bottom_sheet.dart';
// import 'package:cached_network_image/cached_network_image.dart';

// import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';

// class KanchipuramCategory extends StatefulWidget {
//   const KanchipuramCategory({super.key});

//   @override
//   State<KanchipuramCategory> createState() => _KanchipuramCategoryState();
// }

// class _KanchipuramCategoryState extends State<KanchipuramCategory> {
//   @override
//   Widget build(BuildContext context) {
//     // final homeScreenState = context.watch<CartScreenController>();
//     return Scaffold(
//       bottomNavigationBar: Container(
//         height: 40,
//         color: Colors.black,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               InkWell(
//                 onTap: () {
//                   showModalBottomSheet(
//                     context: context,
//                     builder: (context) => PriceCutomBottomSheet(),
//                   );
//                 },
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.price_change,
//                       color: StartingColor.customWhite,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       "PRICE",
//                       style: TextStyle(color: StartingColor.customWhite),
//                     ),
//                   ],
//                 ),
//               ),
//               VerticalDivider(),
//               InkWell(
//                 onTap: () {
//                   showDialog(
//                     context: context,
//                     builder: (context) => CustomPopUp(),
//                   );
//                 },
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.filter_list,
//                       color: StartingColor.customWhite,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       "FILTERS",
//                       style: TextStyle(color: StartingColor.customWhite),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       appBar: AppBar(
//         actions: [
//           Row(
//             children: [
//               IconButton(
//                   onPressed: () {},
//                   icon: Image.asset(
//                     "assets/images/alert.png",
//                     color: StartingColor.customPurple,
//                     scale: 25,
//                   )),
//               IconButton(
//                   onPressed: () {},
//                   icon: Image.asset(
//                     "assets/images/favorite.png",
//                     color: StartingColor.customPurple,
//                     scale: 25,
//                   )),
//               IconButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => CartScreen(),
//                         ));
//                   },
//                   icon: Image.asset(
//                     "assets/images/shopping-bag (1).png",
//                     color: StartingColor.customPurple,
//                     scale: 25,
//                   )),
//             ],
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(children: [
//           Consumer<CartScreenController>(
//             builder: (context, value, child) => GridView.builder(
//                 padding: EdgeInsets.symmetric(horizontal: 17, vertical: 25),
//                 shrinkWrap: true,
//                 physics: ScrollPhysics(),
//                 scrollDirection: Axis.vertical,
//                 itemCount: value.shopItemList1.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     mainAxisSpacing: 15,
//                     mainAxisExtent: 380,
//                     crossAxisSpacing: 15,
//                     crossAxisCount: 2),
//                 itemBuilder: (context, index) {
//                   return InkWell(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => DetailedDress(
//                               img: value.shopItemList1[index]["img"],
//                               name: value.shopItemList1[index]["name"],
//                               des: value.shopItemList1[index]["des"],
//                               price: value.shopItemList1[index]["price"],
//                               left: value.shopItemList1[index]["left"],
//                               onSavePressed: () {
//                                 Provider.of<CartScreenController>(context,
//                                         listen: false)
//                                     .addToCart1(index, context);
//                               },
//                             ),
//                           ));
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         // image: DecorationImage(
//                         //     image: NetworkImage(
//                         //         "https://seematti.com/wp-content/uploads/2024/04/13568260-5.jpg"),
//                         //     fit: BoxFit.cover),
//                         borderRadius: BorderRadius.circular(10),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Color.fromARGB(96, 77, 75, 75),
//                             blurRadius: 90,
//                           ),
//                         ],
//                         // color: Colors.amber,
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.white,
//                             ),
//                             alignment: Alignment.center,
//                             constraints: const BoxConstraints(
//                               maxWidth: 300,
//                               maxHeight: 100,
//                             ),
//                             child: Column(
//                               children: [
//                                 CachedNetworkImage(
//                                   imageUrl: value.shopItemList1[index]["img"],
//                                   placeholder: (context, url) =>
//                                       ReUsableLoading(),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                                 // Image(
//                                 //   image: NetworkImage(
//                                 //       value.shopItemList[index]["img"]),
//                                 //   fit: BoxFit.cover,
//                                 // ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 15),
//                                   child: Column(
//                                     children: [
//                                       Text(
//                                         value.shopItemList1[index]["name"],
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       SizedBox(
//                                         height: 10,
//                                       ),
//                                       Row(
//                                         children: [
//                                           Icon(
//                                             Icons.currency_rupee,
//                                             size: 17,
//                                           ),
//                                           Text(
//                                             value.shopItemList1[index]["price"],
//                                             style: TextStyle(
//                                                 fontSize: 15,
//                                                 fontWeight: FontWeight.w500),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             )),
//                       ),
//                     ),
//                   );
//                 }),
//           )
//           // child: Column(
//           //   crossAxisAlignment: CrossAxisAlignment.start,
//           //   children: [
//           //     Image(
//           //         image: NetworkImage(
//           //             "https://seematti.com/wp-content/uploads/2024/04/13568260-5.jpg")),
//           // SizedBox(
//           //   height: 20,
//           // ),
//           // Center(child: Text("Navy blue")),
//           // Center(child: Text("Navy blue")),
//           // Center(child: Text("Navy blue")),
//           //   ],
//           // ),
//         ]),
//       ),
//     );
//   }
// }
