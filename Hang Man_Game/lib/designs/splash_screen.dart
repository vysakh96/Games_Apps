import 'dart:async';

import 'package:flutter/material.dart';

import 'game_page.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 500,
          width: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/hangman.png'),
            fit: BoxFit.fill,
          )),
          // child: Image(image: AssetImage('images/hangman.png'),)),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HangMan(),
            )));
  }
}
