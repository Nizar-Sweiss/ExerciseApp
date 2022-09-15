import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
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
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category>
    with SingleTickerProviderStateMixin {
  double rotationAngle = 200;

  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animationController.repeat(reverse: true);
    animationController.addStatusListener((status) {});
    animationController.addListener(() {
      setState(() {
        rotationAngle = animationController.value * 3;
      });
    });
  }

  BorderRadius myRadius = BorderRadius.only(bottomLeft: Radius.circular(70));
  bool isHover = false;
  Offset mousPos = Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHover = true;
        });
      },
      onHover: (e) {
        setState(() {
          mousPos += e.delta;
          mousPos += Offset(1, 0);
          ;
        });
      },
      onExit: (e) {
        setState(() {
          isHover = false;
        });
      },
      child: Center(
        child: GestureDetector(
          onTap: widget.onTapping,
          child: Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.white, strokeAlign: StrokeAlign.center),
              image: DecorationImage(
                  image: AssetImage(
                    widget.CategoryImage,
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
            ),
            child: Center(
              child: Text(
                widget.text,
                style: TextStyle(
                  color: widget.TextColor,
                  fontFamily: "Monoton",
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
