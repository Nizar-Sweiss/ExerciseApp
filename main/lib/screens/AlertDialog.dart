import 'package:flutter/material.dart';

class AlertDia extends StatefulWidget {
  const AlertDia({super.key});

  @override
  State<AlertDia> createState() => _AlertDiaState();
}

class _AlertDiaState extends State<AlertDia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        actions: [
          
        ],
        backgroundColor: Color.fromARGB(255, 45, 0, 75),
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            
            child: Text(
              "Your User name or password is wrong  \nCheck Your User Name or Password !! ",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ),
    );
  }
}
