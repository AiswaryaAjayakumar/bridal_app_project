// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bridal_app_project/utils/starting_pages_colors/starting_pages_color_constants.dart';
import 'package:bridal_app_project/view/home_screen/widgets/selected_tex/widgets/cart_screen.dart';
import 'package:bridal_app_project/view/profile_screen/widgets/help.dart';
import 'package:bridal_app_project/view/profile_screen/widgets/settings.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.pushReplacement(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => BottomNav(),
        //           ));
        //     },
        //     icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/alert.png",
                color: StartingColor.customPurple,
                scale: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/favorite.png",
                color: StartingColor.customPurple,
                scale: 25,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              },
              icon: Image.asset(
                "assets/images/shopping-bag (1).png",
                color: StartingColor.customPurple,
                scale: 25,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hey",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "Aiswarya",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ));
                },
                child: ListTile(
                  leading: Icon(Icons.shopping_bag_outlined),
                  title: Text(
                    "Your Trial cart",
                  ),
                  subtitle: Text("Check your trial cart"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HelpScreen(),
                      ));
                },
                child: ListTile(
                  leading: (Icon(Icons.help)),
                  title: Text(
                    "Help and Support",
                  ),
                  subtitle: Text("Get help for your account"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.favorite_border),
                  title: Text(
                    "Wishlist",
                  ),
                  subtitle: Text("Check your favourites"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.edit),
                  title: Text(
                    "Edit Your Profile",
                  ),
                  subtitle: Text("Edit your profile and update details"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsScreen(),
                      ));
                },
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    "Settings",
                  ),
                  subtitle: Text("Edit your details"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}
