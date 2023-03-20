import 'package:acacus/helpers/consts.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key, required this.onPressed, required this.icon});
  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5,
              ),
              border: Border.all(color: mainColor.withOpacity(0.15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon),
            ),
          ),
        ),
      ],
    );
  }
}
