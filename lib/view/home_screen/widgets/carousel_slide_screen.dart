// ignore_for_file: prefer_const_constructors, dead_code, sized_box_for_whitespace

import 'package:bridal_app_project/utils/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class CarouselSlideScreen extends StatefulWidget {
  const CarouselSlideScreen({super.key, required this.imgUrl});

  final String imgUrl;
  

  @override
  State<CarouselSlideScreen> createState() => _CarouselSlideScreenState();
}

class _CarouselSlideScreenState extends State<CarouselSlideScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        child: Swiper(
          itemBuilder: (context, index) {
            return Image.asset(
              ImageConstants.slider[index].toString(),
              fit: BoxFit.cover,
            );
          },

          indicatorLayout: PageIndicatorLayout.COLOR,
          autoplay: true,
          itemCount: ImageConstants.slider.length,
          pagination: const SwiperPagination(),
          // control: const SwiperControl(),
        ));

    // CarouselSlider(
    //     items: [
    //       Image.network(
    //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWZCfkt6w4HKXPu_wW7MbUj0P9QnngEJcySHS1kZXuKQ&s",
    //         fit: BoxFit.cover,
    //         width: 1000,
    //       ),
    //       Image.network(
    //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSICO88MfiowSSpXYwEBMfbynOfRpWCj2RogJU_RwkwUQ&s",
    //         fit: BoxFit.cover,
    //         width: 1000,
    //       ),
    //       Image.network(
    //         "https://i.pinimg.com/736x/13/24/e1/1324e1233830bfdece5e4981c5f10541.jpg",
    //         fit: BoxFit.cover,
    //         width: 1000,
    //       )
    //     ],
    //     options: CarouselOptions(
    //       height: 250,
    //       aspectRatio: 16 / 9,
    //       viewportFraction: 1,
    //       initialPage: 0,
    //       enableInfiniteScroll: true,
    //       reverse: false,
    //       autoPlay: true,
    //       autoPlayInterval: Duration(seconds: 3),
    //       autoPlayAnimationDuration: Duration(milliseconds: 800),
    //       autoPlayCurve: Curves.fastOutSlowIn,
    //       enlargeCenterPage: true,
    //       enlargeFactor: 0.3,
    //       scrollDirection: Axis.horizontal,
    //     ));
  }
}
