import 'package:flutter/material.dart';

class Cust_TextField extends StatefulWidget {
  final String labelText;
  final int maxLength;
  final TextInputType textInputType;
  const Cust_TextField(
      {super.key,
      required this.labelText,
      required this.textInputType,
      required this.maxLength});

  @override
  State<Cust_TextField> createState() => _Cust_TextFieldState();
}

class _Cust_TextFieldState extends State<Cust_TextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      //To take the input when it login
      maxLength: widget.maxLength,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: 1, color: Color.fromARGB(255, 255, 255, 255)),
        ),
        labelText: widget.labelText,
        labelStyle: TextStyle(color: Color.fromARGB(213, 255, 255, 255)),
        border: OutlineInputBorder(),
      ),
      keyboardType: widget.textInputType,
      onFieldSubmitted: (emailFeild) {},
    );
  }
}
