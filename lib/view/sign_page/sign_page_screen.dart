// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/home_screen.dart';
import 'package:bridal_app_project/view/sign_page/widgets/forgot_password.dart';
import 'package:bridal_app_project/view/sign_up_page/sign_up_page.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignPageScreen extends StatefulWidget {
  const SignPageScreen({super.key});

  @override
  State<SignPageScreen> createState() => _SignPageScreenState();
}

class _SignPageScreenState extends State<SignPageScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: StartingPageColor.customBlack,
                    fontSize: 30),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                    label: Text("Email Address"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_rounded),
                    label: Text("Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: StartingPageColor.customGrey,
                    checkColor: StartingPageColor.customPurple,
                    value: isChecked,
                    onChanged: (value) {
                      if (value != null) {
                        isChecked = value;
                      }
                      setState(() {});
                    },
                  ),
                  Text("Keep logged in"),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPassword(),
                            ));
                      },
                      child: Text("Forgot Password?"))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                // height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: StartingPageColor.customPurple),
                child: InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                        (route) => false);
                    Lottie.asset(
                        'assets/images/Animation - 1710862479264.json');
                  },
                  child: Center(
                      child: Text(
                    "LOGIN",
                    style: TextStyle(
                        color: StartingPageColor.customWhite,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,

                      //width: MediaQuery.sizeOf(context).width,
                      color: StartingPageColor.customGrey,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Or",
                    style: TextStyle(color: StartingPageColor.customGrey),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      //width: 165,
                      // width: MediaQuery.sizeOf(context).width,
                      color: StartingPageColor.customGrey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                // height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    // image: DecorationImage(
                    //     image: AssetImage("assets/images/google.png"),
                    //     alignment: Alignment.centerLeft,
                    //     scale: 20),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: StartingPageColor.customGrey),
                    color: StartingPageColor.customWhite),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image(
                        image: AssetImage("assets/images/google.png"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                        child: Text(
                      "Continue with Google",
                      style: TextStyle(
                        color: StartingPageColor.customBlack,
                        //fontSize: 30,
                      ),
                    )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Need an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: Text("Create one"))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
