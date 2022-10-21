import 'package:flutter/material.dart';
import 'package:wovie/genres.dart';
import 'package:wovie/genre/action.dart';
import 'package:wovie/genre/animation.dart';
import 'package:wovie/genre/comedy.dart';
import 'package:wovie/genre/romance.dart';
import 'package:wovie/genre/scifi.dart';
import 'package:wovie/genre/western.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WOVIE',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        backgroundColor: Color(0xffffd93f),
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView(
                  children: [
                    buildTitle(),
                    buildBanner(),
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                WesternPage()));
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff46297a),
                                    ),
                                    child: Image.asset(
                                      "assets/image/western.png",
                                      height: 30,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Western",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w200,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ActionPage()));
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff46297a),
                                    ),
                                    child: Image.asset(
                                      "assets/image/action.png",
                                      height: 30,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Action",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w200,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AnimationPage()));
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff46297a),
                                    ),
                                    child: Image.asset(
                                      "assets/image/animation.png",
                                      height: 30,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Animation",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w200,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ComedyPage()));
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff46297a),
                                    ),
                                    child: Image.asset(
                                      "assets/image/comedy.png",
                                      height: 30,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Comedy",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w200,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RomancePage()));
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff46297a),
                                    ),
                                    child: Image.asset(
                                      "assets/image/heart.png",
                                      height: 30,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Romance",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w200,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ScifiPage()));
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff46297a)),
                                    child: Image.asset(
                                      "assets/image/scifi.png",
                                      height: 30,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Sci-Fi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w200,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Text(
                          "Recently Added",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: "Rubik"),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Colors.redAccent),
                              child: Text(
                                "HOT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Rubik",
                                    fontSize: 13),
                              ),
                            )
                          ],
                        ),
                      ],
                    ), //Recently Added
                    buildRecentlyAdded(),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Text(
                          "Popular",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: "Rubik"),
                        ),
                      ],
                    ), //Popular
                    buildPopular(),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        Text(
                          "Most Viewed",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: "Rubik"),
                        ),
                      ],
                    ), //Most Viewed
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildCard(imgUrl: "assets/image/hatefuleight.jpg"),
                          SizedBox(
                            width: 15,
                          ),
                          buildCard(imgUrl: "assets/image/interstellar.jpg"),
                          SizedBox(
                            width: 15,
                          ),
                          buildCard(imgUrl: "assets/image/lebowski.jpg"),
                          SizedBox(
                            width: 15,
                          ),
                          buildCard(imgUrl: "assets/image/johnwick2.jpg"),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 120)
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                      color: Color(0xfff6bd1f),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, -5),
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 5)
                      ]),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoriesPage()));
                        },
                        child: buildNawIcon(
                            iconData: Icons.list_rounded,
                            active: false,
                            size: false),
                      ),
                      buildNawIcon(
                          iconData: Icons.home_rounded,
                          active: true,
                          size: true),
                      buildNawIcon(
                          iconData: Icons.refresh_rounded,
                          active: false,
                          size: false),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildBanner() {
  List<Map> films = [
    {"film": "John Wick", "image": "assets/image/johnwick2.jpg", "imdb": "8.2"},
    {"film": "John Wick", "image": "assets/image/johnwick2.jpg", "imdb": "8.2"},
    {"film": "John Wick", "image": "assets/image/johnwick2.jpg", "imdb": "8.2"},
    {"film": "John Wick", "image": "assets/image/johnwick2.jpg", "imdb": "8.2"},
    {"film": "John Wick", "image": "assets/image/johnwick2.jpg", "imdb": "8.2"},
    {"film": "John Wick", "image": "assets/image/johnwick2.jpg", "imdb": "8.2"},
  ];
  return Padding(
    padding: EdgeInsets.only(top: 24.0),
    child: Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 14, bottom: 14),
      decoration: BoxDecoration(
          color: Color(0xFF5d2789), borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Weekly wovie!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 14),
              Text(
                "No Country For Old Men is\nfilmed at 2007 and directed by\nEthan Coen and Joel Coen.\nRead weeky review on our blog!",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          Image.asset(
            "assets/image/noCountry.jpg",
            height: 150,
          ),
        ],
      ),
    ),
  );
}

Widget buildTitle() {
  return const Padding(
    padding: EdgeInsets.only(top: 24.0),
    child: Text(
      "Home",
      style: TextStyle(
          fontFamily: "Rubik",
          fontSize: 32,
          color: Colors.black,
          fontWeight: FontWeight.bold),
    ),
  );
}

Widget buildCard({required String imgUrl}) {
  return Container(
    padding: EdgeInsets.only(
      top: 10,
    ),
    width: 150,
    child: ClipRRect(
        borderRadius: BorderRadius.circular(20), child: Image.asset(imgUrl)),
  );
}

Widget buildNawIcon(
    {required IconData iconData, required bool active, required bool size}) {
  return Icon(
    iconData,
    size: active ? 40 : 30,
    color: Color(
      active ? 0xFF46297a : 0xFF8736a9,
    ),
  );
}

Widget buildRecentlyAdded() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        buildCard(imgUrl: "assets/image/noCountry.jpg"),
        SizedBox(
          width: 15,
        ),
        buildCard(imgUrl: "assets/image/matrix.jpg"),
        SizedBox(
          width: 15,
        ),
        buildCard(imgUrl: "assets/image/powerofdog.jpg"),
        SizedBox(
          width: 15,
        ),
        buildCard(imgUrl: "assets/image/johnwick2.jpg"),
        SizedBox(
          width: 15,
        ),
        buildCard(imgUrl: "assets/image/dontlookup.jpg"),
        SizedBox(width: 15),
        buildCard(imgUrl: "assets/image/interstellar.jpg"),
        SizedBox(width: 15),
        buildCard(imgUrl: "assets/image/iamlegend.jpg"),
        SizedBox(width: 15),
        buildCard(imgUrl: "assets/image/lebowski.jpg"),
        SizedBox(width: 15),
        buildCard(imgUrl: "assets/image/snatch.jpg"),
        SizedBox(width: 15),
        buildCard(imgUrl: "assets/image/interceptor.jpg"),
        SizedBox(width: 15),
        buildCard(imgUrl: "assets/image/hatefuleight.jpg"),
        SizedBox(width: 15),
      ],
    ),
  );
}

Widget buildPopular() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        buildCard(imgUrl: "assets/image/snatch.jpg"),
        SizedBox(
          width: 15,
        ),
        buildCard(imgUrl: "assets/image/dontlookup.jpg"),
        SizedBox(
          width: 15,
        ),
        buildCard(imgUrl: "assets/image/interceptor.jpg"),
        SizedBox(
          width: 15,
        ),
        buildCard(imgUrl: "assets/image/johnwick2.jpg"),
        SizedBox(
          width: 15,
        ),
        buildCard(imgUrl: "assets/image/powerofdog.jpg"),
        SizedBox(
          width: 15,
        ),
      ],
    ),
  );
}
