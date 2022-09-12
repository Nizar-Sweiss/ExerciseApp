import 'package:flutter/material.dart';
import 'package:main/Components/categorywidget.dart';
import 'package:main/screens/workout.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("EXERCISES"),
        ),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Category(
          textBackColor: Colors.black,
          TextColor: Color.fromARGB(255, 254, 254, 254),
          CategoryImage: "assests/images/WorkOut.jpg",
          text: "TEST 1 ",
          onTapping: (() {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return WorkOut();
            }));
          }),
        )
      ],
    );
  }
}
