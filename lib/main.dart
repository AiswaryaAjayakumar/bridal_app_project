// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:bridal_app_project/controller/cart_screen_controller.dart';
import 'package:bridal_app_project/view/splash_screen/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartScreenController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: 
        StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SplashScreen(isLogged: true,);
            } else {
              return SplashScreen();
            }
          },
      ),
     ) );
  }
}
