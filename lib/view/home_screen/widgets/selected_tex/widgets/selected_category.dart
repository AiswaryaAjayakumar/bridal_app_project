// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Selectedcategory extends StatefulWidget {
  const Selectedcategory({super.key});

  @override
  State<Selectedcategory> createState() => _SelectedcategoryState();
}

class _SelectedcategoryState extends State<Selectedcategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 25),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 8,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 15,
                mainAxisExtent: 350,
                crossAxisSpacing: 15,
                crossAxisCount: 2),
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     image: NetworkImage(
                  //         "https://seematti.com/wp-content/uploads/2024/04/13568260-5.jpg"),
                  //     fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 90,
                    ),
                  ],
                  // color: Colors.amber,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      constraints: const BoxConstraints(
                        maxWidth: 300,
                        maxHeight: 100,
                      ),
                      child: Column(
                        children: [
                          Image(
                            image: NetworkImage(
                                "https://seematti.com/wp-content/uploads/2024/04/13568260-5.jpg"),
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(child: Text("Navy blue")),
                          Center(child: Text("Navy blue")),
                          Center(child: Text("Navy blue")),
                        ],
                      )),
                ),
              ),
            ),
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Image(
          //         image: NetworkImage(
          //             "https://seematti.com/wp-content/uploads/2024/04/13568260-5.jpg")),
          // SizedBox(
          //   height: 20,
          // ),
          // Center(child: Text("Navy blue")),
          // Center(child: Text("Navy blue")),
          // Center(child: Text("Navy blue")),
          //   ],
          // ),
        ]),
      ),
    );
  }
}
