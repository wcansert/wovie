import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wovie/component/bottomNav.dart';
import 'package:wovie/genre/action.dart';
import 'package:wovie/genre/animation.dart';
import 'package:wovie/genre/comedy.dart';
import 'package:wovie/genre/romance.dart';
import 'package:wovie/genre/scifi.dart';
import 'package:wovie/genre/western.dart';
import 'package:wovie/main.dart';
import 'package:wovie/genre/allPage.dart';

import 'component/header.dart';

class CategoriesPage extends StatelessWidget {
  final List<String> categories = [
    "All",
    "Western",
    "Action",
    "Animation",
    "Comedy",
    "Romance",
    "Sci-Fi"
  ];

  final List<String> categories2 = [
    "All",
    "Western",
    "Action",
    "Animation",
    "Comedy",
    "Romance",
    "Sci-Fi"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffd93f),
        body: SafeArea(
            child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //back
                header("Genres", context),
                SizedBox(
                  height: 16,
                ),

                Expanded(
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          buildCategory("All", context, CategoryPage()),
                          buildCategory("Western", context, WesternPage()),
                          buildCategory("Action", context, ActionPage()),
                          buildCategory("Animation", context, AnimationPage()),
                          buildCategory("Comedy", context, ComedyPage()),
                          buildCategory("Romance", context, RomancePage()),
                          buildCategory("Science Fiction", context, ScifiPage())
                        ],
                      ),
                      SizedBox(
                        height: 150,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: bottomNavBar("category", "category")),
        ])));
  }
}

Widget buildCategory(
  String title,
  context,
  Widget widget,
) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
    },
    child: Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xfff6bd1f),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ]),
      child: Text(
        title,
        style: TextStyle(
            fontFamily: "Rubik",
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black),
      ),
    ),
  );
}

//children: categories
//                           .map((String title) => buildCategory(title, context),)
//                           .toList()
