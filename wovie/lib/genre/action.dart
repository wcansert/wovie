import 'package:flutter/material.dart';
import 'package:wovie/component/bottomNav.dart';
import 'package:wovie/component/header.dart';

import '../main.dart';
import 'allPage.dart';

class ActionPage extends StatelessWidget {
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
                    header("Action", context),
                    SizedBox(height: 10),
                    Expanded(
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              buildPoster(
                                  "John Wick 2",
                                  "assets/image/johnwick2.jpg",
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
                                  "Matrix Resurrections",
                                  "assets/image/matrix.jpg",
                                  "5.7",
                                  "Action, Sci-Fi"),
                              buildPoster(
                                  "No Country For Old Men",
                                  "assets/image/noCountry.jpg",
                                  "8.2",
                                  "Western, Action"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
