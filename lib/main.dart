import 'package:acacus/widgets/clickable_widgets/main_button.dart';
import 'package:acacus/widgets/clickable_widgets/place_card.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.cairoTextTheme(),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: mainColor,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool textExpanded = false;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: const [
                        PlaceCard(),
                        SizedBox(
                          height: 20,
                        ),
                        MainButton(
                          text: 'BORDER',
                          withBorder: true,
                          isloading: true,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MainButton(
                          text: 'NO BORDER',
                          withBorder: false,
                          isloading: true,
                        ),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
