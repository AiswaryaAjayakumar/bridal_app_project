// ignore_for_file: prefer_const_constructors


import 'package:bridal_app_project/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BridalApp());
}

class BridalApp extends StatelessWidget {
  const BridalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
