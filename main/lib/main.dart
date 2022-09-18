import 'package:flutter/material.dart';
import 'package:main/screens/Home.dart';
import 'package:main/screens/splashscreen.dart';
import 'package:main/screens/workout.dart';

void main() {
  runApp(MaterialApp(home: WorkOut(),) );
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
