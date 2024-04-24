import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ReUsableLoading extends StatelessWidget {
  const ReUsableLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.asset("assets/images/Animation - 1710862479264.json"),);
  }
}