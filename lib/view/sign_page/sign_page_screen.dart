// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_build_context_synchronously, unused_local_variable, unnecessary_null_comparison, avoid_print

import 'dart:ui';

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/bottom_navigation/bottom_nav.dart';

import 'package:bridal_app_project/view/sign_page/widgets/forgot_password.dart';
import 'package:bridal_app_project/view/sign_up_page/sign_up_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class SignPageScreen extends StatefulWidget {
  const SignPageScreen({super.key});

  @override
  State<SignPageScreen> createState() => _SignPageScreenState();
}

class _SignPageScreenState extends State<SignPageScreen> {
  TextEditingController mail = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool isChecked = false;

  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("users");
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image(
              image: AssetImage("assets/images/bg image1.jpeg"),
              fit: BoxFit.cover,
            )),
        Center(
            child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              // width: 350.0,
              // height: 700.0,
              decoration:
                  BoxDecoration(color: Colors.grey.shade200.withOpacity(0.5)),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                        child: Column(
                          children: [
                            Text(
                              "Welcome ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: StartingColor.customWhite,
                                  fontFamily: "Milonga-Regular",
                                  fontSize: 40),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            TextFormField(
                              controller: mail,
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Colors.red,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.mail_outline_rounded),
                                  label: Text("Email Address"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              validator: (value) {
                                if (RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(mail.text)) {
                                  return null;
                                } else {
                                  return "enter a valid mail id";
                                }
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: pass,
                              obscureText: true,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.password_rounded),
                                  label: Text("Password"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              validator: (value) {
                                if (value != null && value.length > 6) {
                                  return null;
                                } else {
                                  return "Enter a valid password";
                                }
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: StartingColor.customGrey,
                                  checkColor: StartingColor.customPurple,
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
                                            builder: (context) =>
                                                ForgotPassword(),
                                          ));
                                    },
                                    child: Text("Forgot Password?"))
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () async {
                                if (_formKey.currentState!.validate()) {
                                  try {
                                    final credential = await FirebaseAuth
                                        .instance
                                        .signInWithEmailAndPassword(
                                      email: mail.text,
                                      password: pass.text,
                                    );
                                    if (credential.user?.uid != null) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text("Login Successfully...."),
                                        backgroundColor: Colors.green,
                                      ));

                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BottomNav(),
                                          ));
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(
                                                  "Failed to login, try again..")));
                                    }
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'weak-password') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text("Incorrect Password"),
                                        backgroundColor: Colors.red,
                                      ));
                                    } else if (e.code ==
                                        'email-already-in-use') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text("Enter a valid mail id"),
                                        backgroundColor: Colors.red,
                                      ));
                                    }
                                  } catch (e) {
                                    print(e);
                                  }
                                }
                                // SharedPreferences prefs =
                                //     await SharedPreferences.getInstance();
                                // String? savedMail = prefs.getString("email");
                                // String? savedPass = prefs.getString("confpass");
                                // if (mail.text == savedMail &&
                                //     pass.text == savedPass) {
                                //   ScaffoldMessenger.of(context)
                                //       .showSnackBar(SnackBar(
                                //     content: Text("Login Successfully..."),
                                //     backgroundColor: StartingColor.customGreen,
                                //   ));

                                // Lottie.asset(
                                //     'assets/images/Animation - 1710862479264.json');
                              },
                              child: Container(
                                height: 55,
                                // height: MediaQuery.sizeOf(context).height,
                                // width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          ButtonCustomColor.customTeal1,
                                          ButtonCustomColor.customTeal2,
                                          ButtonCustomColor.customTeal3,
                                          ButtonCustomColor.customTeal4,

                                          // Color.fromARGB(255, 51, 177, 194),
                                          // Color.fromARGB(255, 45, 220, 188),
                                          // Color.fromARGB(255, 16, 126, 140),
                                          // Color.fromARGB(255, 55, 144, 135)
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.bottomRight),
                                    borderRadius: BorderRadius.circular(10),
                                    color: StartingColor.customPurple),
                                child: Center(
                                    child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      color: StartingColor.customWhite,
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
                                    color: StartingColor.customGrey,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Or",
                                  style: TextStyle(
                                      color: StartingColor.customGrey),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 1,
                                    //width: 165,
                                    // width: MediaQuery.sizeOf(context).width,
                                    color: StartingColor.customGrey,
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
                                  border: Border.all(
                                      color: StartingColor.customGrey),
                                  color: StartingColor.customWhite),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/google.png"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Center(
                                      child: Text(
                                    "Continue with Google",
                                    style: TextStyle(
                                      color: StartingColor.customBlack,
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
                  ],
                ),
              ),
            ),
          ),
        )),
      ]),
    );
  }
}
