import 'package:acacus/screens/auth_screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'helpers/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.cairoTextTheme(),
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: mainColor,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: mainColor),
            titleTextStyle: const TextStyle(color: Colors.black),
          ),
        ),
        home: const SplashScreen());
  }
}
