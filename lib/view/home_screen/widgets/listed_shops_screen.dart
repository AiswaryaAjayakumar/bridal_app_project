// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:bridal_app_project/utils/image_constants.dart';
import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/carousel_slide_screen.dart';
import 'package:bridal_app_project/view/home_screen/widgets/jayalakshmi_tex.dart';
import 'package:flutter/material.dart';

class ListedShopsScreen extends StatefulWidget {
  const ListedShopsScreen({super.key});

  @override
  State<ListedShopsScreen> createState() => _ListedShopsScreenState();
}

class _ListedShopsScreenState extends State<ListedShopsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => InkWell(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Jayalaksjmi_Tex(),
                      ));
                }
              },
              child: Container(
                height: 230,
                //width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(ImageConstants.shopImageUrl[index]),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
        itemCount: ImageConstants.shopImageUrl.length);
  }
}
