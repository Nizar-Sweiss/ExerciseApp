import 'package:flutter/material.dart';

class FloatingActionButtonFb4 extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final Color color;
  final Color textColor;
  const FloatingActionButtonFb4(
      {required this.onPressed,
      required this.text,
      this.color = Colors.blue,
      this.textColor = Colors.white,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: color,
      onPressed: onPressed,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: textColor),
      ),
    );
  }
}