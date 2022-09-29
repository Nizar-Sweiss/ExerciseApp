import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:main/Components/categorywidget.dart';
import 'package:main/Components/cust_textfield.dart';
import 'package:main/screens/Categorys/workout.dart';
import "package:hovering/hovering.dart";

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 26, 54),
        body: SignInScreen(),
      ),
    );
  }
}

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 170),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 100,
                          fontFamily: 'ZenTokyoZoo'),
                    )),
              ),
              Cust_TextField(
                  labelText: " User Name",
                  textInputType: TextInputType.name,
                  maxLength: 12),
              Cust_TextField(
                  labelText: " Password ",
                  textInputType: TextInputType.name,
                  maxLength: 12),
              Cust_TextField(
                  labelText: "Conform Password",
                  textInputType: TextInputType.name,
                  maxLength: 12),
            ],
          ),
        ],
      ),
    );
  }
}
