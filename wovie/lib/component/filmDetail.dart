import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wovie/component/bottomNav.dart';
import 'package:wovie/component/header.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffd93f),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header("ALL", context),
                  SizedBox(height: 22),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
