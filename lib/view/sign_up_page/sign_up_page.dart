// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder()
        ),
      ),
      TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder()
        ),
      ),
      TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder()
        ),
      ),
      TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder()
        ),
      ),
      TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder()
        ),
      )
      ],
      ),
    );
  }
}