import 'package:flutter/material.dart';

Widget bottomNavBar(String page, String page2) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
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
            onTap: () {},
            child: buildNawIcon(
                iconData: Icons.list_rounded,
                active: page == "category",
                size: page == "category"),
          ),
          buildNawIcon(
              iconData: Icons.home_rounded,
              active: page == "home",
              size: page2 == "home"),
          buildNawIcon(
              iconData: Icons.refresh_rounded, active: false, size: false),
        ],
      ),
    ),
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
