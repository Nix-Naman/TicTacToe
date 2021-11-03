import 'package:flutter/material.dart';
import 'package:xoxo/widgets/homescreen/display_text.dart';
import 'package:xoxo/widgets/homescreen/elevated_buttons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              DisplayText(
                title: 'TIC',
                color: Colors.red,
              ),
              DisplayText(
                title: 'TAC',
                color: Colors.yellow,
              ),
              DisplayText(
                title: 'TOE',
                color: Colors.red,
              ),
              SizedBox(height: 50),
              EleButton(
                type: 1,
                routeName: '/GameScreen',
                title: "Single Player",
                color1: Colors.pink,
                color2: Colors.purple,
              ),
              SizedBox(height: 30),
              EleButton(
                type: 2,
                routeName: '/GameScreen',
                title: "Multi Player",
                color1: Colors.red,
                color2: Colors.orange,
              ),
              SizedBox(height: 30),
              EleButton(
                type: 0,
                routeName: '/About',
                title: "About",
                color1: Colors.green,
                color2: Colors.lightBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
