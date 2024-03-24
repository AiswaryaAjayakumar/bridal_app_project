// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, use_build_context_synchronously

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/sign_page/sign_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController uName = TextEditingController();
  TextEditingController uMail = TextEditingController();
  TextEditingController user = TextEditingController();
  TextEditingController uMob = TextEditingController();
  TextEditingController uPass = TextEditingController();
  TextEditingController uConPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Create your account",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: uName,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      label: Text("Username"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: uMail,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      label: Text("Email"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: uMob,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.smartphone),
                      label: Text("Mobile Number"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: uPass,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_outlined),
                      label: Text("Password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: uConPass,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_sharp),
                      label: Text("Confirm Password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    if (uName.text.isNotEmpty &&
                        uMail.text.isNotEmpty &&
                        uMob.text.isNotEmpty &&
                        uPass.text.isNotEmpty &&
                        uConPass.text.isNotEmpty) {
                      prefs.setString("username", uName.text);
                      prefs.setString("email", uMail.text);
                      prefs.setString("mobile", uMob.text);
                      prefs.setString("pass", uPass.text);
                      prefs.setString("confpass", uConPass.text);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignPageScreen(),
                          ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("All data are required"),
                        backgroundColor: StartingColor.customRed,
                      ));
                    }
                  },
                  child: Container(
                    height: 55,
                    // height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: StartingColor.customPurple),
                    child: Center(
                        child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                          color: StartingColor.customWhite,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignPageScreen(),
                              ));
                        },
                        child: Text("Login"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
