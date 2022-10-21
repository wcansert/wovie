import 'package:flutter/material.dart';
import 'package:wovie/component/bottomNav.dart';
import 'package:wovie/component/header.dart';

import '../main.dart';
import 'allPage.dart';

class ComedyPage extends StatelessWidget {
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
                    header("Comedy", context),
                    SizedBox(height: 10),
                    Expanded(
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              buildPoster("Big Lebowski",
                                  "assets/image/lebowski.jpg", "8.1", "Comedy"),
                              buildPoster(
                                  "The Great Gatsby",
                                  "assets/image/gatsby.jpg",
                                  "7.2",
                                  "Romance, Drama, Comedy"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              buildPoster(
                                  "Uncut Gems",
                                  "assets/image/uncutgems.jpg",
                                  "7.4",
                                  "Comedy, Drama"),
                              buildPoster("Snatch", "assets/image/snatch.jpg",
                                  "7.5", "Action, Comedy"),
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
