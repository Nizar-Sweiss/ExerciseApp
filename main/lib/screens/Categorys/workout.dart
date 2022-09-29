import 'package:flutter/material.dart';

class WorkOut extends StatefulWidget {
  const WorkOut({super.key});

  @override
  State<WorkOut> createState() => _WorkOutState();
}

class _WorkOutState extends State<WorkOut> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: 200,
          width: 200,
          color: Colors.amber,
          child: Text("Hi "),
        ),
      ),
    );
  }
}
