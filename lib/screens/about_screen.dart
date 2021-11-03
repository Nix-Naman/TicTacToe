import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final String desc =
      'Put away your pencil and paper - now you can play Tic Tac Toe on your IPhone or Android for free.' +
          '\n\nTic Tac Toe supports one player and two player gameplay, so you can play against another human or against your Phone.' +
          '\n\nA move randomization engine ensures that your phone wont keep making the same moves over and over again.';

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
          padding: const EdgeInsets.only(top: 30),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                margin: const EdgeInsets.all(10),
                color: Colors.black12,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    desc,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder()),
                  fixedSize: MaterialStateProperty.all(Size(140, 40)),
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
