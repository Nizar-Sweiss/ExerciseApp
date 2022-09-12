
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final Color textBackColor;
  final Color TextColor;
  final String CategoryImage;
  final String text;

  Function() onTapping;

  Category(
      {required this.onTapping,
      required this.textBackColor,
      required this.TextColor,
      required this.CategoryImage,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTapping,
        child: Container(
          width: double.infinity,
          height: 130,
          decoration: BoxDecoration(
              color: textBackColor, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(color: TextColor),
              ),
              Image.asset(CategoryImage)
            ],
          ),
        ),
      ),
    );
  }
}
