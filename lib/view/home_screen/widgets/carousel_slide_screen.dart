// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSlideScreen extends StatefulWidget {
  const CarouselSlideScreen({super.key});

  @override
  State<CarouselSlideScreen> createState() => _CarouselSlideScreenState();
}

class _CarouselSlideScreenState extends State<CarouselSlideScreen> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          Image.network(
            "https://www.jayalakshmisilks.com/images/jl-banner1.jpg",
            fit: BoxFit.cover,
            width: 1500,
          ),
          Image.network(
            "https://www.jayalakshmisilks.com/images/jl-banner3.jpg",
            fit: BoxFit.cover,
            width: 1500,
          ),
          Image.network(
            "https://inspiritmakeovers.com/wp-content/uploads/2023/01/6-3.jpg",
            fit: BoxFit.cover,
            width: 1500,
          )
        ],
        options: CarouselOptions(
          height: 250,
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
