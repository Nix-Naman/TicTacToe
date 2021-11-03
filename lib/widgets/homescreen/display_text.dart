import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final String title;
  final Color color;
  const DisplayText({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontFamily: 'ZenTokyoZoo', fontSize: 100, color: color),
    );
  }
}
