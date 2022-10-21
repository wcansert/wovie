import 'package:flutter/material.dart';
import 'package:wovie/component/bottomNav.dart';
import 'package:wovie/component/header.dart';

import '../main.dart';
import 'allPage.dart';

class RomancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffd93f),
        body: SafeArea(
            child: Stack(children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header("Romance", context),
                    SizedBox(height: 10),
                    Expanded(
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              buildPoster(
                                  "Anna Karenina",
                                  "assets/image/annakarenina.jpg",
                                  "6.6",
                                  "Romance"),
                              buildPoster(
                                  "The Great Gatsby",
                                  "assets/image/gatsby.jpg",
                                  "7.2",
                                  "Romance, Drama, Comedy"),
                            ],
                          ),
                          SizedBox(
                            height: 85,
                          )
                        ],
                      ),
                    ),
                  ])),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: bottomNavBar("category", "category")),
        ])));
  }
}
