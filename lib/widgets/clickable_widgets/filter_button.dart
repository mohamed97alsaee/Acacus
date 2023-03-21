import 'package:flutter/material.dart';

import '../../helpers/consts.dart';

class FilterButton extends StatelessWidget {
  const FilterButton(
      {super.key,
      required this.isSelected,
      required this.onClick,
      required this.btnTitle});
  final bool isSelected;
  final Function onClick;
  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
                color: isSelected ? mainColor : Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: mainColor)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                btnTitle,
                style: TextStyle(
                    color: isSelected ? Colors.white : mainColor,
                    fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}