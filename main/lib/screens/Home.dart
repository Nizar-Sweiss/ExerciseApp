import 'package:flutter/material.dart';
import 'package:main/Components/categorywidget.dart';
import 'package:main/screens/workout.dart';
import "package:hovering/hovering.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 26, 54),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assests/images/wallpaper.jpg"),
            fit: BoxFit.cover),
      ),
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 230,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                    color: Color.fromARGB(255, 56, 2, 115)),
                child: Stack(
                  children: [
                    Positioned(
                      top: 80,
                      left: 0,
                      child: Container(
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(70),
                                topRight: Radius.circular(70)),
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    Positioned(
                      top: 95,
                      left: 20,
                      child: Text(
                        'Exercises',
                        style: TextStyle(
                            fontSize: 50,
                            color: Color.fromARGB(255, 48, 0, 97),
                            fontWeight: FontWeight.w800,
                            fontFamily: "ZenTokyoZoo"),
                      ),
                    )
                  ],
                ),
              ),
              Category(
                textBackColor: Color.fromARGB(255, 2, 103, 192),
                TextColor: Color.fromARGB(255, 255, 255, 255),
                CategoryImage: "assests/images/Weight.jpg",
                text: "Work-Out",
                onTapping: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WorkOut();
                  }));
                }),
              ),
              Category(
                textBackColor: Color.fromARGB(255, 2, 103, 192),
                TextColor: Color.fromARGB(255, 255, 255, 255),
                CategoryImage: "assests/images/OutDoor.jpg",
                text: "Out-Door",
                onTapping: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WorkOut();
                  }));
                }),
              ),
              Category(
                textBackColor: Color.fromARGB(255, 2, 103, 192),
                TextColor: Color.fromARGB(255, 254, 254, 254),
                CategoryImage: "assests/images/WorkOut.jpg",
                text: "Weight-Liftting",
                onTapping: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WorkOut();
                  }));
                }),
              ),
              Category(
                textBackColor: Color.fromARGB(255, 2, 103, 192),
                TextColor: Color.fromARGB(255, 254, 254, 254),
                CategoryImage: "assests/images/Cadrio.jpg",
                text: "Cardio",
                onTapping: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WorkOut();
                  }));
                }),
              )
            ],
          )
        ],
      ),
    );
  }
}
