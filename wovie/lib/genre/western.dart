import 'package:flutter/material.dart';
import 'package:wovie/component/bottomNav.dart';
import 'package:wovie/component/header.dart';

import '../main.dart';
import 'allPage.dart';

class WesternPage extends StatelessWidget {
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
                    header("Western", context),
                    SizedBox(height: 10),
                    Expanded(
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              buildPoster(
                                  "No Country For Old Men",
                                  "assets/image/noCountry.jpg",
                                  "8.2",
                                  "Western, Action"),
                              buildPoster(
                                  "The Power of the Dog",
                                  "assets/image/powerofdog.jpg",
                                  "6.8",
                                  "Western, Action"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              buildPoster(
                                  "Hateful Eight",
                                  "assets/image/hatefuleight.jpg",
                                  "7.8",
                                  "Western"),
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
