import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          image,
          width: size.width,
          height: size.height * 0.4,
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
