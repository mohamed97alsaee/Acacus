import 'package:acacus/helpers/consts.dart';
import 'package:flutter/material.dart';

class MainButton extends StatefulWidget {
  const MainButton(
      {super.key,
      required this.text,
      required this.withBorder,
      this.widthFromScreen = 0.9,
      required this.isloading,
      required this.onPressed});
  final String text;
  final bool withBorder;
  final double widthFromScreen;
  final bool isloading;
  final Function onPressed;
  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        widget.onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: size.width * widget.widthFromScreen,
          decoration: BoxDecoration(
              color: widget.withBorder ? Colors.white : mainColor,
              border: Border.all(color: mainColor, width: 2),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: widget.isloading
                ? CircularProgressIndicator(
                    color: widget.withBorder ? mainColor : Colors.white,
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      widget.text,
                      style: TextStyle(
                          color: widget.withBorder ? mainColor : Colors.white),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
