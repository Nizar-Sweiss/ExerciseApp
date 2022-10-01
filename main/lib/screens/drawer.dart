import 'package:flutter/material.dart';
import 'package:main/screens/Login.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';


class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AnimatedButton(
              onPress: () {},
              height: 70,
              width: 200,
              text: 'SUBMIT',
              isReverse: true,
              selectedTextColor: Colors.black,
              transitionType: TransitionType.CENTER_ROUNDER,
             
              backgroundColor: Colors.black,
              borderColor: Colors.white,
              borderWidth: 1,
            ),
        Container(
          height: 100,
          width: 100,
          alignment: Alignment.topCenter,
          child: Lottie.asset('assests/Lottie/Q&A.json')),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            alignment: Alignment.bottomCenter,
            color: Colors.red,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text(
                "Logout",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
