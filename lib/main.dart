// ignore_for_file: prefer_const_constructors

import 'package:bridal_app_project/view/bottom_navigation/bottom_nav.dart';
import 'package:bridal_app_project/view/home_screen/home_screen.dart';
import 'package:bridal_app_project/view/home_screen/widgets/location_screen.dart';
import 'package:bridal_app_project/view/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyC3lbvLHjdHUrVj1VSmgOUMm4yDIkDJaGc",
          appId: "1:999926212130:android:d9546040b5b2e396648c7b",
          messagingSenderId: "",
          projectId: "zaum-674a0",
          storageBucket: "zaum-674a0.appspot.com"));
  runApp(BridalApp());
}

class BridalApp extends StatelessWidget {
  const BridalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}
