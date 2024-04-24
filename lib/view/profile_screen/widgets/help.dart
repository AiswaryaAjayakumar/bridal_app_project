// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [ListTile(
          
          title: Row(
            children: [
              Icon(Icons.message),
              Text("Chat with Us"),
            ],
          ),
          subtitle: Text("Response in less than 5 minutes"),
        )],
      ),
    );
  }
}