import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:main/screens/Home.dart';


var emailContr = TextEditingController();
var passwordContr = TextEditingController();

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 47, 1, 56),
        appBar: AppBar(
          title: Text(
            "Login",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 25,
          shadowColor: Colors.purple,
          actions: [
            IconButton(onPressed: Appbaraction, icon: Icon(Icons.face))
          ],
          backgroundColor: Color.fromARGB(255, 59, 1, 95),
        ),
        drawer: Drawer(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assests/images/Login_Background.jpg"),
                fit: BoxFit.fill),
          ),
          child: ListView(
            children: [
              Column(
                
                children: [
                  BackdropFilter(
                     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      margin: EdgeInsets.only(top: 70,bottom: 130),
                        child: Text(
                          "Vladi",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 70,
                              fontFamily: 'DancingScript'),
                        )),
                  ),
                  //SizedBox(height: 150,),
                  TextFormField(
                    //To take the input when it login
                    controller: emailContr,
                    
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 151, 117, 226)),
                        ),
                        labelText: "Your Email or UserName ",
                        labelStyle:
                            TextStyle(color: Color.fromARGB(214, 209, 163, 244)),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        hoverColor: Color.fromARGB(255, 255, 255, 255)),
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (emailFeild) {},
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    //To take the input when it login
                    controller: passwordContr,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(color: Colors.white),

                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Color.fromARGB(255, 151, 117, 226)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.amberAccent),
                        ),
                        labelText: "Password ",
                        labelStyle:
                            TextStyle(color: Color.fromARGB(214, 209, 163, 244)),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                        hoverColor: Color.fromARGB(255, 255, 255, 255)),
                    onFieldSubmitted: (emailFeild) {},
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    width: 200,
                    height: 50,
                    color: Color.fromARGB(255, 113, 33, 134),
                    child: MaterialButton(
                      onPressed: () {
                        
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don\'t Have account ? ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "SIGN IN !",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 157, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                      
                    ],
                  ),
                   SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          )
          
        ),
      ),
    );
  }

  ValidateInfo() {
    if (emailContr.text == "Nizar" && passwordContr.text == "1234") {
      print(emailContr.toString());
      return true;
    } else {
      print(passwordContr.toString());
      return false;
    }
  }

  void Appbaraction() {
    print("App Bar Action ");
  }
}
