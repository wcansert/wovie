import 'package:flutter/material.dart';
import 'package:wovie/component/bottomNav.dart';
import 'package:wovie/component/header.dart';

import '../main.dart';

class CategoryPage extends StatelessWidget {
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
                    header("All", context),
                    SizedBox(height: 22),
                    buildListView(),
                    SizedBox(height: 72),
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

Widget buildPoster(String title, String imgUrl, String imdb, String genre) {
  return Container(
    width: 200,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 24,
            offset: Offset(0, 16))
      ],
    ),
    child: Column(
      children: [
        Image.asset(imgUrl),
        SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Rubik",
            fontSize: 16,
          ),
        ),
        Text(
          "Genre: $genre",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Rubik",
            fontSize: 16,
          ),
        ),
        Text(
          "IMDB: $imdb",
          style: TextStyle(
            fontFamily: "Rubik",
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}

Widget buildRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      buildPoster("John Wick", "assets/image/johnwick2.jpg", "8.2", "Action"),
      buildPoster("John Wick", "assets/image/johnwick2.jpg", "8.2", "Romance"),
    ],
  );
}

Widget buildListView() {
  return Expanded(
    child: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildPoster("Anna Karenina", "assets/image/annakarenina.jpg", "6.6",
                "Romance"),
            buildPoster("Don't Look Up", "assets/image/dontlookup.jpg", "7.2",
                "Comedy, Sci-Fi"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildPoster("The Great Gatsby", "assets/image/gatsby.jpg", "7.2",
                "Romance, Drama, Comedy"),
            buildPoster("Hateful Eight", "assets/image/hatefuleight.jpg", "7.8",
                "Western"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildPoster(
                "I Am Legend", "assets/image/iamlegend.jpg", "7.2", "Sci-Fi"),
            buildPoster(
                "Interceptor", "assets/image/interceptor.jpg", "4.4", "Sci-Fi"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildPoster("Interstellar", "assets/image/interstellar.jpg", "8.6",
                "Sci-Fi"),
            buildPoster(
                "John Wick 2", "assets/image/johnwick2.jpg", "7.4", "Action"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildPoster(
                "Big Lebowski", "assets/image/lebowski.jpg", "8.1", "Comedy"),
            buildPoster("Matrix Resurrections", "assets/image/matrix.jpg",
                "5.7", "Action, Sci-Fi"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildPoster("No Country For Old Men", "assets/image/noCountry.jpg",
                "8.2", "Western, Action"),
            buildPoster("Penguins of Madagascar", "assets/image/penguins.jpg",
                "6.6", "Animation"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildPoster("The Power of the Dog", "assets/image/powerofdog.jpg",
                "6.8", "Western, Action"),
            buildPoster("Uncut Gems", "assets/image/uncutgems.jpg", "7.4",
                "Comedy, Drama"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildPoster(
                "Snatch", "assets/image/snatch.jpg", "7.5", "Action, Comedy"),
            buildPoster("The SpongeBob SquarePants", "assets/image/sponge.jpg",
                "7.1", "Animation"),
          ],
        ),
      ],
    ),
  );
}
