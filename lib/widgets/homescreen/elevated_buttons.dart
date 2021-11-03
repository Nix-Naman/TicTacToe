import 'package:flutter/material.dart';

class EleButton extends StatelessWidget {
  final String title;
  final Color color1, color2;
  final String routeName;
  final int type;
  const EleButton({
    Key? key,
    required this.title,
    required this.color1,
    required this.color2,
    required this.routeName,
    required this.type,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (type) {
          case 1:
            Navigator.pushNamed(context, routeName, arguments: "AI");
            break;
          case 2:
            Navigator.pushNamed(context, routeName, arguments: "Player 2");
            break;
          default:
            Navigator.pushNamed(context, routeName);
        }
      },
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(colors: [color1, color2]),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Baloo2',
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
