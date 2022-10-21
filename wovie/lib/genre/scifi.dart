import 'package:flutter/material.dart';
import 'package:wovie/component/bottomNav.dart';
import 'package:wovie/component/header.dart';

import '../main.dart';
import 'allPage.dart';

class ScifiPage extends StatelessWidget {
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
                    header("Science Fiction", context),
                    SizedBox(height: 10),
                    Expanded(
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              buildPoster(
                                  "Don't Look Up",
                                  "assets/image/dontlookup.jpg",
                                  "7.2",
                                  "Comedy, Sci-Fi"),
                              buildPoster(
                                  "I Am Legend",
                                  "assets/image/iamlegend.jpg",
                                  "7.2",
                                  "Sci-Fi"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              buildPoster(
                                  "Interceptor",
                                  "assets/image/interceptor.jpg",
                                  "4.4",
                                  "Sci-Fi"),
                              buildPoster(
                                  "Interstellar",
                                  "assets/image/interstellar.jpg",
                                  "8.6",
                                  "Sci-Fi"),
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
