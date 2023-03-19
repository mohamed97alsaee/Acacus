import 'dart:async';

import 'package:acacus/helpers/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, CupertinoPageRoute(builder: (_) => const IntroScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Image.asset(
          'assets/whiteLogo.png',
          width: size.width * 0.6,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
