// ignore_for_file: prefer_const_constructors

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/sign_page/sign_page_screen.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/images/warning.png",
                scale: 8,
                color: StartingPageColor.customRed,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Enter your Email and we'll send you a link to reset your password.",
              style: TextStyle(
                color: StartingPageColor.customGrey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "eg:abc@gmil.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              // height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: StartingPageColor.customGren),
              child: Center(
                  child: Text(
                "SUBMIT",
                style: TextStyle(
                    color: StartingPageColor.customWhite,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              )),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignPageScreen(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chevron_left,
                    color: StartingPageColor.customPurple,
                  ),
                  Text(
                    "Back to Login",
                    style: TextStyle(color: StartingPageColor.customPurple),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
